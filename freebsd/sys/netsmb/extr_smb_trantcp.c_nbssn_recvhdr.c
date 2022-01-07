
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct uio {int uio_iovcnt; int uio_resid; struct thread* uio_td; scalar_t__ uio_offset; int uio_rw; int uio_segflg; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct socket {int so_vnet; } ;
struct sockaddr {int dummy; } ;
struct nbpcb {struct socket* nbp_tso; } ;
struct mbuf {int dummy; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
typedef int len ;
typedef scalar_t__ caddr_t ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EFBIG ;
 int EPIPE ;
 int SMBERROR (char*,int) ;
 int SMBSDEBUG (char*) ;
 int SMB_MAXPKTLEN ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int ntohl (int) ;
 int soreceive (struct socket*,struct sockaddr**,struct uio*,struct mbuf**,struct mbuf**,int*) ;

__attribute__((used)) static int
nbssn_recvhdr(struct nbpcb *nbp, int *lenp,
 u_int8_t *rpcodep, int flags, struct thread *td)
{
 struct socket *so = nbp->nbp_tso;
 struct uio auio;
 struct iovec aio;
 u_int32_t len;
 int error;

 aio.iov_base = (caddr_t)&len;
 aio.iov_len = sizeof(len);
 auio.uio_iov = &aio;
 auio.uio_iovcnt = 1;
 auio.uio_segflg = UIO_SYSSPACE;
 auio.uio_rw = UIO_READ;
 auio.uio_offset = 0;
 auio.uio_resid = sizeof(len);
 auio.uio_td = td;
 CURVNET_SET(so->so_vnet);
 error = soreceive(so, (struct sockaddr **)((void*)0), &auio,
     (struct mbuf **)((void*)0), (struct mbuf **)((void*)0), &flags);
 CURVNET_RESTORE();
 if (error)
  return error;
 if (auio.uio_resid > 0) {
  SMBSDEBUG("short reply\n");
  return EPIPE;
 }
 len = ntohl(len);
 *rpcodep = (len >> 24) & 0xFF;
 len &= 0x1ffff;
 if (len > SMB_MAXPKTLEN) {
  SMBERROR("packet too long (%d)\n", len);
  return EFBIG;
 }
 *lenp = len;
 return 0;
}
