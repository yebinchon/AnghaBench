
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int av ;


 int EXIT_FAILURE ;
 int O_RDONLY ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 char** calloc (int,int) ;
 int close (int) ;
 int errno ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,char*) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int stderr ;
 char* strdup (char const* const) ;
 char* strerror (int ) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int
exec_command(int argc, const char *const argv[])
{
 pid_t child_pid;
 pid_t wret;
 int child_status;
 int i;

 printf("Executing command: ");
 for (i = 0; i < argc - 1; i++) {
  if (!argv[i]) {

   return -1;
  }
  if (i > 0) {
   putchar(' ');
  }
  printf("%s", argv[i]);
 }
 putchar('\n');

 child_pid = fork();
 if (child_pid == 0) {
  char **av;
  int fds[3];



  for (i = 0; i < 3; i++) {
   close(i);
   fds[i] = open("/dev/null", O_RDONLY);
   if (fds[i] < 0) {
    for (i--; i >= 0; i--) {
     close(fds[i]);
    }
    return -1;
   }
  }


  av = calloc(argc, sizeof(av[0]));
  if (!av) {
   exit(EXIT_FAILURE);
  }
  for (i = 0; i < argc - 1; i++) {
   av[i] = strdup(argv[i]);
   if (!av[i]) {
    exit(EXIT_FAILURE);
   }
  }
  execvp(av[0], av);
  perror("execvp()");
  exit(EXIT_FAILURE);
 }

 wret = waitpid(child_pid, &child_status, 0);
 if (wret < 0) {
  fprintf(stderr, "waitpid() failed: %s\n", strerror(errno));
  return wret;
 }
 if (WIFEXITED(child_status)) {
  return WEXITSTATUS(child_status);
 }

 return -1;
}
