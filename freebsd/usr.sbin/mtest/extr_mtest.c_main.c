
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ EAFNOSUPPORT ;
 int EPROTONOSUPPORT ;
 int IPPROTO_UDP ;
 int LINE_LENGTH ;
 int SOCK_DGRAM ;
 int STDIN_FILENO ;
 int close (int) ;
 int err (int,char*) ;
 int errc (int,int ,char*) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int feof (int ) ;
 int * fgets (char*,int,int ) ;
 scalar_t__ isatty (int ) ;
 scalar_t__ isblank (char) ;
 int printf (char*) ;
 int process_cmd (char*,int,int,int ) ;
 int process_file (char*,int,int) ;
 int socket (int ,int ,int ) ;
 int stdin ;
 scalar_t__ strchr (char*,char) ;

int
main(int argc, char **argv)
{
 char line[LINE_LENGTH];
 char *p;
 int i, s, s6;

 s = -1;
 s6 = -1;
 if (s == -1 && s6 == -1)
  errc(1, EPROTONOSUPPORT, "can't open socket");

 if (argc < 2) {
  if (isatty(STDIN_FILENO)) {
   printf("multicast membership test program; "
       "enter ? for list of commands\n");
  }
  do {
   if (fgets(line, sizeof(line), stdin) != ((void*)0)) {
    if (line[0] != 'f')
     process_cmd(line, s, s6, stdin);
    else {

     for (i = 1; isblank(line[i]); i++);
     if ((p = (char*)strchr(line, '\n'))
         != ((void*)0))
      *p = '\0';
     process_file(&line[i], s, s6);
    }
   }
  } while (!feof(stdin));
 } else {
  for (i = 1; i < argc; i++) {
   process_file(argv[i], s, s6);
  }
 }

 if (s != -1)
  close(s);
 if (s6 != -1)
  close(s6);

 exit (0);
}
