
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_nlink; } ;
typedef int pthread_t ;


 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 scalar_t__ TRUE ;
 int cleaner ;
 int exit (int) ;
 char* filebase ;
 int fprintf (int ,char*) ;
 int mover ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_setconcurrency (int) ;
 int sleep (int) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int writer ;

int
main(int argc, char **argv)
{
 int fd;
 pthread_t tid;

 if (argc == 1) {
  (void) printf("Usage: %s <filebase>\n", argv[0]);
  exit(-1);
 }

 filebase = argv[1];
 fd = open(filebase, O_APPEND | O_RDWR | O_CREAT, 0644);
 if (fd < 0) {
  perror("creating test file");
  exit(-1);
 }

 if (pthread_setconcurrency(4)) {
  fprintf(stderr, "failed to set concurrency\n");
  exit(-1);
 }
 (void) pthread_create(&tid, ((void*)0), mover, ((void*)0));
 (void) pthread_create(&tid, ((void*)0), cleaner, ((void*)0));
 (void) pthread_create(&tid, ((void*)0), writer, (void *) &fd);

 while (TRUE) {
  int ret;
  struct stat st;

  ret = stat(filebase, &st);
  if (ret == 0 && (st.st_nlink > 2 || st.st_nlink < 1)) {
   (void) printf("st.st_nlink = %d, exiting\n", (int)st.st_nlink);

   exit(0);
  }
  (void) sleep(1);
 }

 return (0);
}
