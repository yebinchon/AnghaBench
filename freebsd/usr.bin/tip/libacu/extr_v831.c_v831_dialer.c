
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 void* AC ;
 char* DV ;
 int EBUSY ;
 int EIO ;
 void* FD ;
 int O_RDWR ;
 int SIGALRM ;
 int SIGINT ;
 int SIGKILL ;
 int SIGQUIT ;
 int SIG_DFL ;
 int SIG_IGN ;
 int VERBOSE ;
 int alarm (int) ;
 int alarmtr ;
 scalar_t__ boolean (int ) ;
 int child ;
 int close (void*) ;
 char dialit (char*,char*) ;
 int errno ;
 int exit (int) ;
 int fork () ;
 int jmpbuf ;
 int kill (int,int ) ;
 void* open (char*,int ) ;
 int printf (char*,...) ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int strlen (char*) ;
 int value (int ) ;
 int wait (int*) ;

int
v831_dialer(char *num, char *acu)
{
        int status;
        int timelim;
 pid_t pid;

        if (boolean(value(VERBOSE)))
                printf("\nstarting call...");



        if ((AC = open(acu, O_RDWR)) < 0) {
                if (errno == EBUSY)
                        printf("line busy...");
                else
                        printf("acu open error...");
                return (0);
        }
        if (setjmp(jmpbuf)) {
                kill(child, SIGKILL);
                close(AC);
                return (0);
        }
        signal(SIGALRM, alarmtr);
        timelim = 5 * strlen(num);
        alarm(timelim < 30 ? 30 : timelim);
        if ((child = fork()) == 0) {



                signal(SIGALRM, SIG_IGN);
  signal(SIGINT, SIG_IGN);
                signal(SIGQUIT, SIG_IGN);
                sleep(2);
                exit(dialit(num, acu) != 'A');
        }



        if ((FD = open(DV, O_RDWR)) < 0) {



                if (errno == EIO)
                        printf("lost carrier...");
                else
                        printf("dialup line open failed...");
                alarm(0);
                kill(child, SIGKILL);
                close(AC);
                return (0);
        }
        alarm(0);
        signal(SIGALRM, SIG_DFL);
        while ((pid = wait(&status)) != child && pid != -1)
                ;
        if (status) {
                close(AC);
                return (0);
        }
        return (1);
}
