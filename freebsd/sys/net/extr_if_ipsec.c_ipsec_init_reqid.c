
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipsec_softc {int reqid; } ;


 int CK_LIST_INSERT_HEAD (int ,struct ipsec_softc*,int ) ;
 int EEXIST ;
 int IPSEC_REQID_TRYCNT ;
 int SA_XLOCKED ;
 int idhash ;
 scalar_t__ ipsec_check_reqid (int ) ;
 int ipsec_idhash (int ) ;
 int ipsec_ioctl_sx ;
 int key_newreqid () ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
ipsec_init_reqid(struct ipsec_softc *sc)
{
 uint32_t reqid;
 int trycount;

 sx_assert(&ipsec_ioctl_sx, SA_XLOCKED);
 if (sc->reqid != 0)
  return (0);

 trycount = IPSEC_REQID_TRYCNT;
 while (--trycount > 0) {
  reqid = key_newreqid();
  if (ipsec_check_reqid(reqid) == 0)
   break;
 }
 if (trycount == 0)
  return (EEXIST);
 sc->reqid = reqid;
 CK_LIST_INSERT_HEAD(ipsec_idhash(reqid), sc, idhash);
 return (0);
}
