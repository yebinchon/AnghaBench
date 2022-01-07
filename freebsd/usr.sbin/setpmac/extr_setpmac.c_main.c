
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mac_t ;


 char* _PATH_BSHELL ;
 int err (int,char*,char const*) ;
 int execlp (char const*,char const*,char*,char*) ;
 int execvp (char*,char**) ;
 char* getenv (char*) ;
 int mac_free (int ) ;
 int mac_from_text (int *,char*) ;
 int mac_set_proc (int ) ;
 int perror (char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 const char *shell;
 mac_t label;
 int error;


 if (argc < 3)
  usage();

 error = mac_from_text(&label, argv[1]);
 if (error != 0) {
  perror("mac_from_text");
  return (-1);
 }

 error = mac_set_proc(label);
 if (error != 0) {
  perror(argv[1]);
  return (-1);
 }

 mac_free(label);

 if (argc >= 3) {
  execvp(argv[2], argv + 2);
  err(1, "%s", argv[2]);
 } else {
  if (!(shell = getenv("SHELL")))
   shell = _PATH_BSHELL;
  execlp(shell, shell, "-i", (char *)((void*)0));
  err(1, "%s", shell);
 }

}
