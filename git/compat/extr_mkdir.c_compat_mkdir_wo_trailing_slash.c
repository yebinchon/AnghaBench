
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int free (char*) ;
 int mkdir (char*,int ) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;

int compat_mkdir_wo_trailing_slash(const char *dir, mode_t mode)
{
 int retval;
 char *tmp_dir = ((void*)0);
 size_t len = strlen(dir);

 if (len && dir[len-1] == '/') {
  if ((tmp_dir = strdup(dir)) == ((void*)0))
   return -1;
  tmp_dir[len-1] = '\0';
 }
 else
  tmp_dir = (char *)dir;

 retval = mkdir(tmp_dir, mode);
 if (tmp_dir != dir)
  free(tmp_dir);

 return retval;
}
