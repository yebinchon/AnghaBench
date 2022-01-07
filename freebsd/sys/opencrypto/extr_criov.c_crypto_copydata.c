
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 int bcopy (scalar_t__,scalar_t__,int) ;
 int cuio_copydata (struct uio*,int,int,scalar_t__) ;
 int m_copydata (struct mbuf*,int,int,scalar_t__) ;

void
crypto_copydata(int flags, caddr_t buf, int off, int size, caddr_t out)
{

 if ((flags & CRYPTO_F_IMBUF) != 0)
  m_copydata((struct mbuf *)buf, off, size, out);
 else if ((flags & CRYPTO_F_IOV) != 0)
  cuio_copydata((struct uio *)buf, off, size, out);
 else
  bcopy(buf + off, out, size);
}
