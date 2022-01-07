
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int title ;
struct stat {int st_mode; } ;
typedef int ssize_t ;
typedef int prompt ;
typedef int buf ;


 int DITEM_FAILURE ;
 int DITEM_LEAVE_MENU ;
 int DITEM_RECREATE ;
 scalar_t__ ENOENT ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_WRONLY ;
 int R_OK ;
 int SILLY_BUFFER_SIZE ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ access (char const*,int ) ;
 int close (int) ;
 int dialog_msgbox (char*,char*,int,int,int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int open (char const*,int,int) ;
 char* path_localtime ;
 int read (int,char*,int) ;
 scalar_t__ reallydoit ;
 int snprintf (char*,int,char*,...) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 scalar_t__ symlink (char const*,char*) ;
 scalar_t__ unlink (char*) ;
 scalar_t__ usedialog ;
 int write (int,char*,int) ;

__attribute__((used)) static int
install_zoneinfo_file(const char *zoneinfo_file)
{
 char buf[1024];
 char title[64], prompt[SILLY_BUFFER_SIZE];
 struct stat sb;
 ssize_t len;
 int fd1, fd2, copymode;

 if (lstat(path_localtime, &sb) < 0) {

  copymode = 1;
 } else if (S_ISLNK(sb.st_mode))
  copymode = 0;
 else
  copymode = 1;
 if (reallydoit) {
  if (copymode) {
   fd1 = open(zoneinfo_file, O_RDONLY, 0);
   if (fd1 < 0) {
    snprintf(title, sizeof(title), "Error");
    snprintf(prompt, sizeof(prompt),
        "Could not open %s: %s", zoneinfo_file,
        strerror(errno));





     fprintf(stderr, "%s\n", prompt);
    return (DITEM_FAILURE | DITEM_RECREATE);
   }

   if (unlink(path_localtime) < 0 && errno != ENOENT) {
    snprintf(prompt, sizeof(prompt),
        "Could not delete %s: %s",
        path_localtime, strerror(errno));






     fprintf(stderr, "%s\n", prompt);
    return (DITEM_FAILURE | DITEM_RECREATE);
   }

   fd2 = open(path_localtime, O_CREAT | O_EXCL | O_WRONLY,
       S_IRUSR | S_IRGRP | S_IROTH);
   if (fd2 < 0) {
    snprintf(title, sizeof(title), "Error");
    snprintf(prompt, sizeof(prompt),
        "Could not open %s: %s",
        path_localtime, strerror(errno));





     fprintf(stderr, "%s\n", prompt);
    return (DITEM_FAILURE | DITEM_RECREATE);
   }

   while ((len = read(fd1, buf, sizeof(buf))) > 0)
    if ((len = write(fd2, buf, len)) < 0)
     break;

   if (len == -1) {
    snprintf(title, sizeof(title), "Error");
    snprintf(prompt, sizeof(prompt),
        "Error copying %s to %s %s", zoneinfo_file,
        path_localtime, strerror(errno));





     fprintf(stderr, "%s\n", prompt);

    unlink(path_localtime);
    return (DITEM_FAILURE | DITEM_RECREATE);
   }
   close(fd1);
   close(fd2);
  } else {
   if (access(zoneinfo_file, R_OK) != 0) {
    snprintf(title, sizeof(title), "Error");
    snprintf(prompt, sizeof(prompt),
        "Cannot access %s: %s", zoneinfo_file,
        strerror(errno));





     fprintf(stderr, "%s\n", prompt);
    return (DITEM_FAILURE | DITEM_RECREATE);
   }
   if (unlink(path_localtime) < 0 && errno != ENOENT) {
    snprintf(prompt, sizeof(prompt),
        "Could not delete %s: %s",
        path_localtime, strerror(errno));






     fprintf(stderr, "%s\n", prompt);
    return (DITEM_FAILURE | DITEM_RECREATE);
   }
   if (symlink(zoneinfo_file, path_localtime) < 0) {
    snprintf(title, sizeof(title), "Error");
    snprintf(prompt, sizeof(prompt),
        "Cannot create symbolic link %s to %s: %s",
        path_localtime, zoneinfo_file,
        strerror(errno));





     fprintf(stderr, "%s\n", prompt);
    return (DITEM_FAILURE | DITEM_RECREATE);
   }
  }
 }

 return (DITEM_LEAVE_MENU);
}
