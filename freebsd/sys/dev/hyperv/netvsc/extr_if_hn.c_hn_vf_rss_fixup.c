
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ifrsskey {int ifrh_types; int ifrk_key; int ifrh_func; int ifrh_name; int ifrk_keylen; int ifrk_func; int ifrk_name; } ;
struct ifrsshash {int ifrh_types; int ifrk_key; int ifrh_func; int ifrh_name; int ifrk_keylen; int ifrk_func; int ifrk_name; } ;
struct ifnet {int (* if_ioctl ) (struct ifnet*,int ,int ) ;int if_xname; } ;
struct TYPE_2__ {int rss_key; } ;
struct hn_softc {int hn_flags; int hn_rx_ring_inuse; int hn_rss_hcap; int hn_rss_hash; TYPE_1__ hn_rss; struct ifnet* hn_vf_ifp; struct ifnet* hn_ifp; } ;
typedef int ifrk ;
typedef int ifrh ;
typedef int caddr_t ;


 int HN_FLAG_HAS_RSSKEY ;
 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int KASSERT (int,char*) ;
 int NDIS_HASH_FUNCTION_MASK ;
 int NDIS_HASH_FUNCTION_TOEPLITZ ;
 int NDIS_HASH_KEYSIZE_TOEPLITZ ;
 int RSS_FUNC_TOEPLITZ ;
 int RSS_TYPE_IPV4 ;
 int RSS_TYPE_IPV6 ;
 int RSS_TYPE_IPV6_EX ;
 int RSS_TYPE_TCP_IPV4 ;
 int RSS_TYPE_TCP_IPV6 ;
 int RSS_TYPE_TCP_IPV6_EX ;
 int RSS_TYPE_UDP_IPV4 ;
 int RSS_TYPE_UDP_IPV6 ;
 int RSS_TYPE_UDP_IPV6_EX ;
 int SIOCGIFRSSHASH ;
 int SIOCGIFRSSKEY ;
 int hn_rss_mbuf_hash (struct hn_softc*,int) ;
 int hn_rss_reconfig (struct hn_softc*) ;
 int hn_rss_type_fromndis (int) ;
 int hn_rss_type_tondis (int) ;
 int if_printf (struct ifnet*,char*,...) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ifrsskey*,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int stub1 (struct ifnet*,int ,int ) ;
 int stub2 (struct ifnet*,int ,int ) ;

__attribute__((used)) static void
hn_vf_rss_fixup(struct hn_softc *sc, bool reconf)
{
 struct ifnet *ifp, *vf_ifp;
 struct ifrsshash ifrh;
 struct ifrsskey ifrk;
 int error;
 uint32_t my_types, diff_types, mbuf_types = 0;

 HN_LOCK_ASSERT(sc);
 KASSERT(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED,
     ("%s: synthetic parts are not attached", sc->hn_ifp->if_xname));

 if (sc->hn_rx_ring_inuse == 1) {

  return;
 }
 if ((sc->hn_rss_hcap & NDIS_HASH_FUNCTION_TOEPLITZ) == 0) {

  return;
 }

 ifp = sc->hn_ifp;
 vf_ifp = sc->hn_vf_ifp;





 memset(&ifrk, 0, sizeof(ifrk));
 strlcpy(ifrk.ifrk_name, vf_ifp->if_xname, sizeof(ifrk.ifrk_name));
 error = vf_ifp->if_ioctl(vf_ifp, SIOCGIFRSSKEY, (caddr_t)&ifrk);
 if (error) {
  if_printf(ifp, "%s SIOCGRSSKEY failed: %d\n",
      vf_ifp->if_xname, error);
  goto done;
 }
 if (ifrk.ifrk_func != RSS_FUNC_TOEPLITZ) {
  if_printf(ifp, "%s RSS function %u is not Toeplitz\n",
      vf_ifp->if_xname, ifrk.ifrk_func);
  goto done;
 }
 if (ifrk.ifrk_keylen != NDIS_HASH_KEYSIZE_TOEPLITZ) {
  if_printf(ifp, "%s invalid RSS Toeplitz key length %d\n",
      vf_ifp->if_xname, ifrk.ifrk_keylen);
  goto done;
 }




 memset(&ifrh, 0, sizeof(ifrh));
 strlcpy(ifrh.ifrh_name, vf_ifp->if_xname, sizeof(ifrh.ifrh_name));
 error = vf_ifp->if_ioctl(vf_ifp, SIOCGIFRSSHASH, (caddr_t)&ifrh);
 if (error) {
  if_printf(ifp, "%s SIOCGRSSHASH failed: %d\n",
      vf_ifp->if_xname, error);
  goto done;
 }
 if (ifrh.ifrh_func != RSS_FUNC_TOEPLITZ) {
  if_printf(ifp, "%s RSS function %u is not Toeplitz\n",
      vf_ifp->if_xname, ifrh.ifrh_func);
  goto done;
 }

 my_types = hn_rss_type_fromndis(sc->hn_rss_hcap);
 if ((ifrh.ifrh_types & my_types) == 0) {

  if_printf(ifp, "%s intersection of RSS types failed.  "
      "VF %#x, mine %#x\n", vf_ifp->if_xname,
      ifrh.ifrh_types, my_types);
  goto done;
 }

 diff_types = my_types ^ ifrh.ifrh_types;
 my_types &= ifrh.ifrh_types;
 mbuf_types = my_types;
 if ((my_types & RSS_TYPE_IPV4) &&
     (diff_types & ifrh.ifrh_types &
      (RSS_TYPE_TCP_IPV4 | RSS_TYPE_UDP_IPV4))) {

  if_printf(ifp, "disable IPV4 mbuf hash delivery\n");
  mbuf_types &= ~RSS_TYPE_IPV4;
 }
 if ((my_types & RSS_TYPE_IPV6) &&
     (diff_types & ifrh.ifrh_types &
      (RSS_TYPE_TCP_IPV6 | RSS_TYPE_UDP_IPV6 |
       RSS_TYPE_TCP_IPV6_EX | RSS_TYPE_UDP_IPV6_EX |
       RSS_TYPE_IPV6_EX))) {

  if_printf(ifp, "disable IPV6 mbuf hash delivery\n");
  mbuf_types &= ~RSS_TYPE_IPV6;
 }
 if ((my_types & RSS_TYPE_IPV6_EX) &&
     (diff_types & ifrh.ifrh_types &
      (RSS_TYPE_TCP_IPV6 | RSS_TYPE_UDP_IPV6 |
       RSS_TYPE_TCP_IPV6_EX | RSS_TYPE_UDP_IPV6_EX |
       RSS_TYPE_IPV6))) {

  if_printf(ifp, "disable IPV6_EX mbuf hash delivery\n");
  mbuf_types &= ~RSS_TYPE_IPV6_EX;
 }
 if ((my_types & RSS_TYPE_TCP_IPV6) &&
     (diff_types & ifrh.ifrh_types & RSS_TYPE_TCP_IPV6_EX)) {

  if_printf(ifp, "disable TCP_IPV6 mbuf hash delivery\n");
  mbuf_types &= ~RSS_TYPE_TCP_IPV6;
 }
 if ((my_types & RSS_TYPE_TCP_IPV6_EX) &&
     (diff_types & ifrh.ifrh_types & RSS_TYPE_TCP_IPV6)) {

  if_printf(ifp, "disable TCP_IPV6_EX mbuf hash delivery\n");
  mbuf_types &= ~RSS_TYPE_TCP_IPV6_EX;
 }
 if ((my_types & RSS_TYPE_UDP_IPV6) &&
     (diff_types & ifrh.ifrh_types & RSS_TYPE_UDP_IPV6_EX)) {

  if_printf(ifp, "disable UDP_IPV6 mbuf hash delivery\n");
  mbuf_types &= ~RSS_TYPE_UDP_IPV6;
 }
 if ((my_types & RSS_TYPE_UDP_IPV6_EX) &&
     (diff_types & ifrh.ifrh_types & RSS_TYPE_UDP_IPV6)) {

  if_printf(ifp, "disable UDP_IPV6_EX mbuf hash delivery\n");
  mbuf_types &= ~RSS_TYPE_UDP_IPV6_EX;
 }





 sc->hn_rss_hash = (sc->hn_rss_hcap & NDIS_HASH_FUNCTION_MASK) |
     hn_rss_type_tondis(my_types);
 memcpy(sc->hn_rss.rss_key, ifrk.ifrk_key, sizeof(sc->hn_rss.rss_key));
 sc->hn_flags |= HN_FLAG_HAS_RSSKEY;

 if (reconf) {
  error = hn_rss_reconfig(sc);
  if (error) {

   if_printf(ifp, "hn_rss_reconfig failed: %d\n", error);

  }
 }
done:

 hn_rss_mbuf_hash(sc, hn_rss_type_tondis(mbuf_types));
}
