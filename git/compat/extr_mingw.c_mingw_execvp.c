
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int errno ;
 int free (char*) ;
 int mingw_execv (char*,char* const*) ;
 char* path_lookup (char const*,int ) ;

int mingw_execvp(const char *cmd, char *const *argv)
{
 char *prog = path_lookup(cmd, 0);

 if (prog) {
  mingw_execv(prog, argv);
  free(prog);
 } else
  errno = ENOENT;

 return -1;
}
