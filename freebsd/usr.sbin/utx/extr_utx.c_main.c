
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOOT_TIME ;
 int SHUTDOWN_TIME ;
 int boot (int ) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int rm (char**) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int
main(int argc, char *argv[])
{

 if (argc == 2 && strcmp(argv[1], "boot") == 0)
  return (boot(BOOT_TIME));
 else if (argc == 2 && strcmp(argv[1], "shutdown") == 0)
  return (boot(SHUTDOWN_TIME));
 else if (argc >= 3 && strcmp(argv[1], "rm") == 0)
  return (rm(&argv[2]));

 fprintf(stderr,
     "usage: utx boot\n"
     "       utx shutdown\n"
     "       utx rm identifier ...\n");
 exit(1);
}
