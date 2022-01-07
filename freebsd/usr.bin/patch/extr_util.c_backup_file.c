
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ dev_t ;
typedef int bakname ;


 scalar_t__ EXDEV ;
 int PATH_MAX ;
 scalar_t__ backup_type ;
 scalar_t__ copy_file (char const*,char*) ;
 int debug ;
 scalar_t__ errno ;
 int fatal (char*,...) ;
 char* find_backup_file_name (char const*) ;
 int free (char*) ;
 int islower (unsigned char) ;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ none ;
 scalar_t__* origprae ;
 scalar_t__ rename (char const*,char*) ;
 int say (char*,char const*,char*) ;
 scalar_t__* simple_backup_suffix ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,...) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 char toupper (unsigned char) ;
 int unlink (char const*) ;

int
backup_file(const char *orig)
{
 struct stat filestat;
 char bakname[PATH_MAX], *s, *simplename;
 dev_t orig_device;
 ino_t orig_inode;

 if (backup_type == none || stat(orig, &filestat) != 0)
  return 0;





 if ((origprae && *origprae == 0) || *simple_backup_suffix == 0) {
  unlink(orig);
  return 0;
 }
 orig_device = filestat.st_dev;
 orig_inode = filestat.st_ino;

 if (origprae) {
  if (strlcpy(bakname, origprae, sizeof(bakname)) >= sizeof(bakname) ||
      strlcat(bakname, orig, sizeof(bakname)) >= sizeof(bakname))
   fatal("filename %s too long for buffer\n", origprae);
 } else {
  if ((s = find_backup_file_name(orig)) == ((void*)0))
   fatal("out of memory\n");
  if (strlcpy(bakname, s, sizeof(bakname)) >= sizeof(bakname))
   fatal("filename %s too long for buffer\n", s);
  free(s);
 }

 if ((simplename = strrchr(bakname, '/')) != ((void*)0))
  simplename = simplename + 1;
 else
  simplename = bakname;






 while (stat(bakname, &filestat) == 0 &&
     orig_device == filestat.st_dev && orig_inode == filestat.st_ino) {

  for (s = simplename; *s && !islower((unsigned char)*s); s++)
   ;
  if (*s)
   *s = toupper((unsigned char)*s);
  else
   memmove(simplename, simplename + 1,
       strlen(simplename + 1) + 1);
 }




 if (rename(orig, bakname) < 0) {
  if (errno != EXDEV || copy_file(orig, bakname) < 0)
   return -1;
 }
 return 0;
}
