
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {struct an_softc* if_softc; } ;
struct TYPE_2__ {int an_len; int an_type; int an_val; } ;
struct an_softc {TYPE_1__ areq; } ;
struct an_ltv_gen {int dummy; } ;
struct aironet_ioctl {int command; int len; scalar_t__ data; } ;
 int AN_CMD_DISABLE ;
 int AN_CMD_ENABLE ;
 int AN_LOCK (struct an_softc*) ;
 int AN_LOCK_ASSERT (struct an_softc*) ;
 int AN_MAX_DATALEN ;
 int AN_RID_32BITS_DELTACLR ;
 int AN_RID_APLIST ;
 int AN_RID_CAPABILITIES ;
 int AN_RID_GENCONFIG ;
 int AN_RID_LEAPPASSWORD ;
 int AN_RID_LEAPUSERNAME ;
 int AN_RID_SSIDLIST ;
 int AN_RID_WEP_PERM ;
 int AN_RID_WEP_TEMP ;
 int AN_UNLOCK (struct an_softc*) ;
 int EFAULT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int an_cmd (struct an_softc*,int ,int ) ;
 int an_read_record (struct an_softc*,struct an_ltv_gen*) ;
 int an_write_record (struct an_softc*,struct an_ltv_gen*) ;
 int copyin (scalar_t__,int*,int) ;
 int copyout (int*,scalar_t__,int) ;

__attribute__((used)) static int
writerids(struct ifnet *ifp, struct aironet_ioctl *l_ioctl)
{
 struct an_softc *sc;
 int rid, command, error;

 sc = ifp->if_softc;
 AN_LOCK_ASSERT(sc);
 rid = 0;
 command = l_ioctl->command;

 switch (command) {
 case 131:
  rid = AN_RID_SSIDLIST;
  break;
 case 137:
  rid = AN_RID_CAPABILITIES;
  break;
 case 138:
  rid = AN_RID_APLIST;
  break;
 case 136:
  rid = AN_RID_GENCONFIG;
  break;
 case 132:
  an_cmd(sc, AN_CMD_ENABLE, 0);
  return 0;
  break;
 case 133:
  an_cmd(sc, AN_CMD_DISABLE, 0);
  return 0;
  break;
 case 130:






  rid = AN_RID_32BITS_DELTACLR;
  sc = ifp->if_softc;
  sc->areq.an_len = AN_MAX_DATALEN;
  sc->areq.an_type = rid;

  an_read_record(sc, (struct an_ltv_gen *)&sc->areq);
  l_ioctl->len = sc->areq.an_len - 4;

  AN_UNLOCK(sc);

  error = copyout(&(sc->areq.an_len), l_ioctl->data,
       sizeof(sc->areq.an_len));
  if (error) {
   AN_LOCK(sc);
   return -EFAULT;
  }

  error = copyout(&(sc->areq.an_val), l_ioctl->data + 2,
       l_ioctl->len);
  AN_LOCK(sc);
  if (error)
   return -EFAULT;
  return 0;
  break;
 case 129:
  rid = AN_RID_WEP_TEMP;
  break;
 case 128:
  rid = AN_RID_WEP_PERM;
  break;
 case 134:
  rid = AN_RID_LEAPUSERNAME;
  break;
 case 135:
  rid = AN_RID_LEAPPASSWORD;
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (rid) {
  if (l_ioctl->len > sizeof(sc->areq.an_val) + 4)
   return -EINVAL;
  sc->areq.an_len = l_ioctl->len + 4;
  sc->areq.an_type = rid;


  AN_UNLOCK(sc);
  error = copyin((l_ioctl->data) + 2, &sc->areq.an_val,
         l_ioctl->len);
  AN_LOCK(sc);
  if (error)
   return -EFAULT;

  an_cmd(sc, AN_CMD_DISABLE, 0);
  an_write_record(sc, (struct an_ltv_gen *)&sc->areq);
  an_cmd(sc, AN_CMD_ENABLE, 0);
  return 0;
 }
 return -EOPNOTSUPP;
}
