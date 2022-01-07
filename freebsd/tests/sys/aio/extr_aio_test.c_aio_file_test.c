
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
 int FILE_LEN ;
 int FILE_PATHNAME ;
 int O_CREAT ;
 int O_RDWR ;
 int aio_context_init (struct aio_context*,int,int,int ) ;
 int aio_read_test (struct aio_context*,int ,struct sigevent*) ;
 int aio_write_test (struct aio_context*,int ,struct sigevent*) ;
 int close (int) ;
 int errno ;
 int open (int ,int,int) ;
 int strerror (int ) ;

__attribute__((used)) static void
aio_file_test(completion comp, struct sigevent *sev)
{
 struct aio_context ac;
 int fd;

 ATF_REQUIRE_KERNEL_MODULE("aio");
 ATF_REQUIRE_UNSAFE_AIO();

 fd = open(FILE_PATHNAME, O_RDWR | O_CREAT, 0600);
 ATF_REQUIRE_MSG(fd != -1, "open failed: %s", strerror(errno));

 aio_context_init(&ac, fd, fd, FILE_LEN);
 aio_write_test(&ac, comp, sev);
 aio_read_test(&ac, comp, sev);
 close(fd);
}
