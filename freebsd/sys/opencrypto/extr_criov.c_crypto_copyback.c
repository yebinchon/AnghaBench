
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ caddr_t ;
typedef int c_caddr_t ;


 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 int bcopy (int ,scalar_t__,int) ;
 int cuio_copyback (struct uio*,int,int,int ) ;
 int m_copyback (struct mbuf*,int,int,int ) ;

void
crypto_copyback(int flags, caddr_t buf, int off, int size, c_caddr_t in)
{

 if ((flags & CRYPTO_F_IMBUF) != 0)
  m_copyback((struct mbuf *)buf, off, size, in);
 else if ((flags & CRYPTO_F_IOV) != 0)
  cuio_copyback((struct uio *)buf, off, size, in);
 else
  bcopy(in, buf + off, size);
}
