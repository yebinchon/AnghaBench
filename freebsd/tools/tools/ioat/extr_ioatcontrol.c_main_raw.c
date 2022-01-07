
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_test {int transactions; int chain_depth; int buffer_size; scalar_t__ raw_target; int testkind; } ;


 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int IOAT_DMATEST ;
 int IOAT_TEST_RAW_DMA ;
 int O_RDWR ;
 int atoi (char*) ;
 int close (int) ;
 int exit (int ) ;
 int ioctl (int,int ,struct ioat_test*) ;
 int open (char*,int ) ;
 int prettyprint (struct ioat_test*) ;
 int printf (char*) ;
 scalar_t__ strtoull (char*,int *,int ) ;

__attribute__((used)) static void
main_raw(struct ioat_test *t, int argc, char **argv)
{
 int fd;


 t->testkind = IOAT_TEST_RAW_DMA;
 t->transactions = 1;
 t->chain_depth = 1;
 t->buffer_size = 4 * 1024;

 t->raw_target = strtoull(argv[1], ((void*)0), 0);
 if (t->raw_target == 0) {
  printf("Target shoudln't be NULL\n");
  exit(EX_USAGE);
 }

 if (argc >= 3) {
  t->buffer_size = atoi(argv[2]);
  if (t->buffer_size == 0) {
   printf("Buffer size must be greater than zero\n");
   exit(EX_USAGE);
  }
 }

 fd = open("/dev/ioat_test", O_RDWR);
 if (fd < 0) {
  printf("Cannot open /dev/ioat_test\n");
  exit(EX_UNAVAILABLE);
 }

 (void)ioctl(fd, IOAT_DMATEST, t);
 close(fd);

 exit(prettyprint(t));
}
