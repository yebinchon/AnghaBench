
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_dir_sep (char) ;
 int skip_dos_drive_prefix (char**) ;
 char* strpbrk (char*,char*) ;

int win32_offset_1st_component(const char *path)
{
 char *pos = (char *)path;


 if (!skip_dos_drive_prefix(&pos) &&
   is_dir_sep(pos[0]) && is_dir_sep(pos[1])) {

  pos = strpbrk(pos + 2, "\\/");
  if (!pos)
   return 0;

  do {
   pos++;
  } while (*pos && !is_dir_sep(*pos));
 }

 return pos + is_dir_sep(*pos) - path;
}
