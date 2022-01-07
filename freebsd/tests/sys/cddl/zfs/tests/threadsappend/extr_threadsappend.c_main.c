
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int _SC_NPROCESSORS_ONLN ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int go ;
 int open (char*,int,int) ;
 size_t optind ;
 int outfd ;
 int perror (char*) ;
 int pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 int stderr ;
 long sysconf (int ) ;
 int usage () ;

int
main(int argc, char **argv)
{
 pthread_t threads[2];
 int ret = 0;
 long ncpus = 0;
 int i;

 if (argc != 2) {
  usage();
 }

 ncpus = sysconf(_SC_NPROCESSORS_ONLN);
 if (ncpus < 0) {
  (void) fprintf(stderr,
      "Invalid return from sysconf(_SC_NPROCESSORS_ONLN)"
      " : errno (decimal)=%d\n", errno);
  exit(1);
 }
 if (ncpus < 2) {
  (void) fprintf(stderr,
      "Must execute this binary on a multi-processor system\n");
  exit(1);
 }

 outfd = open(argv[optind++], O_RDWR|O_CREAT|O_APPEND|O_TRUNC, 0777);
 if (outfd == -1) {
  (void) fprintf(stderr,
      "zfs_threadsappend: "
      "open(%s, O_RDWR|O_CREAT|O_APPEND|O_TRUNC, 0777)"
      " failed\n", argv[optind]);
  perror("open");
  exit(1);
 }

 for (i = 0; i < 2; i++) {
  ret = pthread_create(&threads[i], ((void*)0), go, (void *)&i);
  if (ret != 0) {
   (void) fprintf(stderr,
       "zfs_threadsappend: thr_create(#%d) "
       "failed error=%d\n", i+1, ret);
   exit(1);
  }
 }

 for (i = 0; i < 2; i++) {
  if (pthread_join(threads[i], ((void*)0)) != 0)
   break;
 }

 return (0);
}
