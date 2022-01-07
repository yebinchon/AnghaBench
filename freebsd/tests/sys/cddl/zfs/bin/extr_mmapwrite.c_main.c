
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int buf ;


 int BUFSIZ ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int exit (int) ;
 int mapper ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 scalar_t__ pthread_create (int *,int *,int ,int*) ;
 int write (int,char*,int) ;

int
main(int argc, char **argv)
{
 int fd;
 char buf[BUFSIZ];
 pthread_t pt;

 if (argc != 2) {
  (void) printf("usage: %s <file name>\n", argv[0]);
  exit(1);
 }

 if ((fd = open(argv[1], O_RDWR|O_CREAT|O_TRUNC, 0666)) == -1) {
  perror("open");
  exit(1);
 }

 if (pthread_create(&pt, ((void*)0), mapper, &fd) != 0) {
  perror("pthread_create");
  exit(1);
 }
 for (;;) {
  if (write(fd, buf, sizeof (buf)) == -1) {
   perror("write");
   exit(1);
  }
 }


 return (0);
}
