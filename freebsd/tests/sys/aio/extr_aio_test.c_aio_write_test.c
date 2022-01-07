
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigevent {int dummy; } ;
struct aiocb {scalar_t__ aio_nbytes; struct sigevent aio_sigevent; scalar_t__ aio_offset; int aio_fildes; int aio_buf; } ;
struct aio_context {scalar_t__ ac_buflen; int ac_write_fd; int ac_buffer; } ;
typedef scalar_t__ ssize_t ;
typedef int intmax_t ;
typedef scalar_t__ (* completion ) (struct aiocb*) ;
typedef int aio ;


 scalar_t__ aio_write (struct aiocb*) ;
 int atf_tc_fail (char*,int ) ;
 int bzero (struct aiocb*,int) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static void
aio_write_test(struct aio_context *ac, completion comp, struct sigevent *sev)
{
 struct aiocb aio;
 ssize_t len;

 bzero(&aio, sizeof(aio));
 aio.aio_buf = ac->ac_buffer;
 aio.aio_nbytes = ac->ac_buflen;
 aio.aio_fildes = ac->ac_write_fd;
 aio.aio_offset = 0;
 if (sev)
  aio.aio_sigevent = *sev;

 if (aio_write(&aio) < 0)
  atf_tc_fail("aio_write failed: %s", strerror(errno));

 len = comp(&aio);
 if (len < 0)
  atf_tc_fail("aio failed: %s", strerror(errno));

 if (len != ac->ac_buflen)
  atf_tc_fail("aio short write (%jd)", (intmax_t)len);
}
