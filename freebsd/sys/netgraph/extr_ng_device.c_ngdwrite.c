
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {scalar_t__ uio_resid; } ;
struct mbuf {int dummy; } ;
struct cdev {int si_drv1; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_2__ {int hook; } ;


 int DBG ;
 int EIO ;
 int ENOBUFS ;
 scalar_t__ IP_MAXPACKET ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 struct mbuf* m_uiotombuf (struct uio*,int ,int ,int ,int ) ;

__attribute__((used)) static int
ngdwrite(struct cdev *dev, struct uio *uio, int flag)
{
 priv_p priv = (priv_p )dev->si_drv1;
 struct mbuf *m;
 int error = 0;

 DBG;

 if (uio->uio_resid == 0)
  return (0);

 if (uio->uio_resid < 0 || uio->uio_resid > IP_MAXPACKET)
  return (EIO);

 if ((m = m_uiotombuf(uio, M_NOWAIT, 0, 0, M_PKTHDR)) == ((void*)0))
  return (ENOBUFS);

 NG_SEND_DATA_ONLY(error, priv->hook, m);

 return (error);
}
