
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {struct an_softc* if_softc; } ;
struct TYPE_2__ {int an_len; unsigned short an_type; int an_val; } ;
struct an_softc {TYPE_1__ areq; } ;
struct an_ltv_gen {int dummy; } ;
struct aironet_ioctl {int command; int len; scalar_t__ data; } ;
 int AN_LOCK (struct an_softc*) ;
 int AN_MAX_DATALEN ;
 unsigned short AN_RID_32BITS_CUM ;
 unsigned short AN_RID_32BITS_DELTA ;
 unsigned short AN_RID_APLIST ;
 unsigned short AN_RID_CAPABILITIES ;
 unsigned short AN_RID_DRVNAME ;
 unsigned short AN_RID_ENCAPPROTO ;
 unsigned short AN_RID_GENCONFIG ;
 unsigned short AN_RID_SSIDLIST ;
 unsigned short AN_RID_STATUS ;
 unsigned short AN_RID_WEP_PERM ;
 unsigned short AN_RID_WEP_TEMP ;
 int AN_UNLOCK (struct an_softc*) ;
 int EFAULT ;
 int EINVAL ;
 int an_read_record (struct an_softc*,struct an_ltv_gen*) ;
 scalar_t__ copyout (int*,scalar_t__,int) ;

__attribute__((used)) static int
readrids(struct ifnet *ifp, struct aironet_ioctl *l_ioctl)
{
 unsigned short rid;
 struct an_softc *sc;
 int error;

 switch (l_ioctl->command) {
 case 138:
  rid = AN_RID_CAPABILITIES;
  break;
 case 137:
  rid = AN_RID_GENCONFIG;
  break;
 case 134:
  rid = AN_RID_SSIDLIST;
  break;
 case 130:
  rid = AN_RID_APLIST;
  break;
 case 136:
  rid = AN_RID_DRVNAME;
  break;
 case 135:
  rid = AN_RID_ENCAPPROTO;
  break;
 case 128:
  rid = AN_RID_WEP_TEMP;
  break;
 case 129:
  rid = AN_RID_WEP_PERM;
  break;
 case 133:
  rid = AN_RID_STATUS;
  break;
 case 131:
  rid = AN_RID_32BITS_DELTA;
  break;
 case 132:
  rid = AN_RID_32BITS_CUM;
  break;
 default:
  rid = 999;
  break;
 }

 if (rid == 999)
  return -EINVAL;

 sc = ifp->if_softc;
 sc->areq.an_len = AN_MAX_DATALEN;
 sc->areq.an_type = rid;

 an_read_record(sc, (struct an_ltv_gen *)&sc->areq);

 l_ioctl->len = sc->areq.an_len - 4;

 AN_UNLOCK(sc);

 if (copyout(&(sc->areq.an_len), l_ioctl->data,
      sizeof(sc->areq.an_len))) {
  error = -EFAULT;
  goto lock_exit;
 }

 if (copyout(&(sc->areq.an_val), l_ioctl->data + 2,
      l_ioctl->len)) {
  error = -EFAULT;
  goto lock_exit;
 }
 error = 0;
lock_exit:
 AN_LOCK(sc);
 return (error);
}
