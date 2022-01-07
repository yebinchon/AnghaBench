
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int sa; } ;
struct TYPE_3__ {int sa; } ;
struct secasindex {TYPE_2__ dst; TYPE_1__ src; } ;
struct ipsec_softc {scalar_t__ reqid; int family; } ;


 int CK_LIST_INSERT_HEAD (int ,struct ipsec_softc*,int ) ;
 int CK_LIST_REMOVE (struct ipsec_softc*,int ) ;
 int EEXIST ;
 int IPSEC_DIR_OUTBOUND ;
 int IPSEC_WAIT () ;
 int KASSERT (int ,char*) ;
 int SA_XLOCKED ;
 int idhash ;
 scalar_t__ ipsec_check_reqid (scalar_t__) ;
 struct secasindex* ipsec_getsaidx (struct ipsec_softc*,int ,int ) ;
 int ipsec_idhash (scalar_t__) ;
 scalar_t__ ipsec_init_reqid (struct ipsec_softc*) ;
 int ipsec_ioctl_sx ;
 int ipsec_set_tunnel (struct ipsec_softc*,int *,int *,scalar_t__) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
ipsec_set_reqid(struct ipsec_softc *sc, uint32_t reqid)
{
 struct secasindex *saidx;

 sx_assert(&ipsec_ioctl_sx, SA_XLOCKED);

 if (sc->reqid == reqid && reqid != 0)
  return (0);

 if (reqid != 0) {

  if (ipsec_check_reqid(reqid) != 0)
   return (EEXIST);
  if (sc->reqid != 0) {
   CK_LIST_REMOVE(sc, idhash);
   IPSEC_WAIT();
  }
  sc->reqid = reqid;
  CK_LIST_INSERT_HEAD(ipsec_idhash(reqid), sc, idhash);
 } else {

  if (ipsec_init_reqid(sc) != 0)
   return (EEXIST);
 }


 if (sc->family == 0)
  return (0);

 saidx = ipsec_getsaidx(sc, IPSEC_DIR_OUTBOUND, sc->family);
 KASSERT(saidx != ((void*)0),
     ("saidx is NULL, but family is %d", sc->family));
 return (ipsec_set_tunnel(sc, &saidx->src.sa, &saidx->dst.sa,
     sc->reqid));
}
