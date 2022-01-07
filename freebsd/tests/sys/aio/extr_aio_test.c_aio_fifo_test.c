
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigevent {int dummy; } ;
struct aio_context {int dummy; } ;
typedef int completion ;


 int ATF_REQUIRE_KERNEL_MODULE (char*) ;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int ATF_REQUIRE_UNSAFE_AIO () ;
 int FIFO_LEN ;
 int FIFO_PATHNAME ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_WRONLY ;
 int aio_context_init (struct aio_context*,int,int,int ) ;
 int aio_read_test (struct aio_context*,int ,struct sigevent*) ;
 int aio_write_test (struct aio_context*,int ,struct sigevent*) ;
 int atf_tc_fail (char*,int ) ;
 int close (int) ;
 int errno ;
 int mkfifo (int ,int) ;
 int open (int ,int) ;
 int strerror (int) ;

__attribute__((used)) static void
aio_fifo_test(completion comp, struct sigevent *sev)
{
 int error, read_fd = -1, write_fd = -1;
 struct aio_context ac;

 ATF_REQUIRE_KERNEL_MODULE("aio");
 ATF_REQUIRE_UNSAFE_AIO();

 ATF_REQUIRE_MSG(mkfifo(FIFO_PATHNAME, 0600) != -1,
     "mkfifo failed: %s", strerror(errno));

 read_fd = open(FIFO_PATHNAME, O_RDONLY | O_NONBLOCK);
 if (read_fd == -1) {
  error = errno;
  errno = error;
  atf_tc_fail("read_fd open failed: %s",
      strerror(errno));
 }

 write_fd = open(FIFO_PATHNAME, O_WRONLY);
 if (write_fd == -1) {
  error = errno;
  errno = error;
  atf_tc_fail("write_fd open failed: %s",
      strerror(errno));
 }

 aio_context_init(&ac, read_fd, write_fd, FIFO_LEN);
 aio_write_test(&ac, comp, sev);
 aio_read_test(&ac, comp, sev);

 close(read_fd);
 close(write_fd);
}
