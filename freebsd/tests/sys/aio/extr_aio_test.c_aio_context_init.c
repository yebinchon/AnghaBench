
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_context {int ac_read_fd; int ac_write_fd; int ac_buflen; int ac_seed; int ac_buffer; } ;


 int ATF_REQUIRE_MSG (int,char*,...) ;
 int BUFFER_MAX ;
 int aio_fill_buffer (int ,int,int ) ;
 scalar_t__ aio_test_buffer (int ,int,int ) ;
 int bzero (struct aio_context*,int) ;
 int random () ;
 int srandomdev () ;

__attribute__((used)) static void
aio_context_init(struct aio_context *ac, int read_fd,
    int write_fd, int buflen)
{

 ATF_REQUIRE_MSG(buflen <= BUFFER_MAX,
     "aio_context_init: buffer too large (%d > %d)",
     buflen, BUFFER_MAX);
 bzero(ac, sizeof(*ac));
 ac->ac_read_fd = read_fd;
 ac->ac_write_fd = write_fd;
 ac->ac_buflen = buflen;
 srandomdev();
 ac->ac_seed = random();
 aio_fill_buffer(ac->ac_buffer, buflen, ac->ac_seed);
 ATF_REQUIRE_MSG(aio_test_buffer(ac->ac_buffer, buflen,
     ac->ac_seed) != 0, "aio_test_buffer: internal error");
}
