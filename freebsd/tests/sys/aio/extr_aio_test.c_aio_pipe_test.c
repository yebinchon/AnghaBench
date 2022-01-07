
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
 int PIPE_LEN ;
 int aio_context_init (struct aio_context*,int,int,int ) ;
 int aio_read_test (struct aio_context*,int ,struct sigevent*) ;
 int aio_write_test (struct aio_context*,int ,struct sigevent*) ;
 int close (int) ;
 int errno ;
 int pipe (int*) ;
 int strerror (int ) ;

__attribute__((used)) static void
aio_pipe_test(completion comp, struct sigevent *sev)
{
 struct aio_context ac;
 int pipes[2];

 ATF_REQUIRE_KERNEL_MODULE("aio");
 ATF_REQUIRE_UNSAFE_AIO();

 ATF_REQUIRE_MSG(pipe(pipes) != -1,
     "pipe failed: %s", strerror(errno));

 aio_context_init(&ac, pipes[0], pipes[1], PIPE_LEN);
 aio_write_test(&ac, comp, sev);
 aio_read_test(&ac, comp, sev);

 close(pipes[0]);
 close(pipes[1]);
}
