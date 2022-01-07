
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_op {int ses; size_t len; void* mac; void const* src; } ;
typedef int cop ;


 int ATF_CHECK_MSG (int,char*) ;
 int CIOCCRYPT ;
 scalar_t__ ioctl (int,int ,struct crypt_op*) ;
 int memset (struct crypt_op*,int ,int) ;

__attribute__((used)) static void
do_cryptop(int fd, int ses, const void *inp, size_t inlen, void *out)
{
 struct crypt_op cop;

 memset(&cop, 0, sizeof(cop));

 cop.ses = ses;
 cop.len = inlen;
 cop.src = inp;
 cop.mac = out;
 ATF_CHECK_MSG(ioctl(fd, CIOCCRYPT, &cop) >= 0, "ioctl(CIOCCRYPT)");
}
