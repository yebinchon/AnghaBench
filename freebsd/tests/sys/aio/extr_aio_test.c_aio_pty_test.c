
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
struct sigevent {int dummy; } ;
struct aio_context {int dummy; } ;
typedef int completion ;


 int ATF_REQUIRE_KERNEL_MODULE (char*) ;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int ATF_REQUIRE_UNSAFE_AIO () ;
 int PTY_LEN ;
 int TCSANOW ;
 int aio_context_init (struct aio_context*,int,int,int ) ;
 int aio_read_test (struct aio_context*,int ,struct sigevent*) ;
 int aio_write_test (struct aio_context*,int ,struct sigevent*) ;
 int atf_tc_fail (char*,int ) ;
 int cfmakeraw (struct termios*) ;
 int close (int) ;
 int errno ;
 scalar_t__ openpty (int*,int*,int *,int *,int *) ;
 int strerror (int) ;
 scalar_t__ tcgetattr (int,struct termios*) ;
 scalar_t__ tcsetattr (int,int ,struct termios*) ;

__attribute__((used)) static void
aio_pty_test(completion comp, struct sigevent *sev)
{
 struct aio_context ac;
 int read_fd, write_fd;
 struct termios ts;
 int error;

 ATF_REQUIRE_KERNEL_MODULE("aio");
 ATF_REQUIRE_UNSAFE_AIO();

 ATF_REQUIRE_MSG(openpty(&read_fd, &write_fd, ((void*)0), ((void*)0), ((void*)0)) == 0,
     "openpty failed: %s", strerror(errno));


 if (tcgetattr(write_fd, &ts) < 0) {
  error = errno;
  errno = error;
  atf_tc_fail("tcgetattr failed: %s", strerror(errno));
 }
 cfmakeraw(&ts);
 if (tcsetattr(write_fd, TCSANOW, &ts) < 0) {
  error = errno;
  errno = error;
  atf_tc_fail("tcsetattr failed: %s", strerror(errno));
 }
 aio_context_init(&ac, read_fd, write_fd, PTY_LEN);

 aio_write_test(&ac, comp, sev);
 aio_read_test(&ac, comp, sev);

 close(read_fd);
 close(write_fd);
}
