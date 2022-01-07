
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ENOENT ;
 int errno ;
 int free (char*) ;
 int mingw_spawnve_fd (char*,char const**,char**,char const*,int,int,int,int) ;
 char* parse_interpreter (char*) ;
 char* path_lookup (char const*,int) ;

pid_t mingw_spawnvpe(const char *cmd, const char **argv, char **deltaenv,
       const char *dir,
       int fhin, int fhout, int fherr)
{
 pid_t pid;
 char *prog = path_lookup(cmd, 0);

 if (!prog) {
  errno = ENOENT;
  pid = -1;
 }
 else {
  const char *interpr = parse_interpreter(prog);

  if (interpr) {
   const char *argv0 = argv[0];
   char *iprog = path_lookup(interpr, 1);
   argv[0] = prog;
   if (!iprog) {
    errno = ENOENT;
    pid = -1;
   }
   else {
    pid = mingw_spawnve_fd(iprog, argv, deltaenv, dir, 1,
             fhin, fhout, fherr);
    free(iprog);
   }
   argv[0] = argv0;
  }
  else
   pid = mingw_spawnve_fd(prog, argv, deltaenv, dir, 0,
            fhin, fhout, fherr);
  free(prog);
 }
 return pid;
}
