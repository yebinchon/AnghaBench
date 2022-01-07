
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rndis_status_msg {int rm_status; int rm_stbuflen; int rm_stbufoffset; } ;
struct hn_softc {int hn_ifp; } ;
typedef int change ;







 int RNDIS_STBUFOFFSET_ABS (int ) ;
 int hn_change_network (struct hn_softc*) ;
 int hn_update_link_status (struct hn_softc*) ;
 int if_printf (int ,char*,...) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static void
hn_rndis_rx_status(struct hn_softc *sc, const void *data, int dlen)
{
 const struct rndis_status_msg *msg;
 int ofs;

 if (dlen < sizeof(*msg)) {
  if_printf(sc->hn_ifp, "invalid RNDIS status\n");
  return;
 }
 msg = data;

 switch (msg->rm_status) {
 case 131:
 case 130:
  hn_update_link_status(sc);
  break;

 case 128:
 case 132:

  break;

 case 129:
  ofs = RNDIS_STBUFOFFSET_ABS(msg->rm_stbufoffset);
  if (dlen < ofs + msg->rm_stbuflen ||
      msg->rm_stbuflen < sizeof(uint32_t)) {
   if_printf(sc->hn_ifp, "network changed\n");
  } else {
   uint32_t change;

   memcpy(&change, ((const uint8_t *)msg) + ofs,
       sizeof(change));
   if_printf(sc->hn_ifp, "network changed, change %u\n",
       change);
  }
  hn_change_network(sc);
  break;

 default:
  if_printf(sc->hn_ifp, "unknown RNDIS status 0x%08x\n",
      msg->rm_status);
  break;
 }
}
