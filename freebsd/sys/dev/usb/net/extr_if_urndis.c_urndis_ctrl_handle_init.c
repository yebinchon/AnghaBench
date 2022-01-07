
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct urndis_softc {scalar_t__ sc_lim_pktsz; } ;
struct rndis_init_comp {int rm_status; int rm_pktmaxsz; int rm_medium; int rm_devflags; int rm_aflistsz; int rm_aflistoffset; int rm_align; int rm_pktmaxcnt; int rm_ver_minor; int rm_ver_major; int rm_rid; int rm_len; } ;
struct rndis_comp_hdr {int dummy; } ;


 int DPRINTF (char*,scalar_t__,...) ;
 scalar_t__ RNDIS_DF_CONNECTIONLESS ;
 scalar_t__ RNDIS_MEDIUM_802_3 ;
 scalar_t__ RNDIS_STATUS_FAILURE ;
 scalar_t__ RNDIS_STATUS_SUCCESS ;
 scalar_t__ le32toh (int ) ;

__attribute__((used)) static uint32_t
urndis_ctrl_handle_init(struct urndis_softc *sc,
    const struct rndis_comp_hdr *hdr)
{
 const struct rndis_init_comp *msg;

 msg = (const struct rndis_init_comp *)hdr;

 DPRINTF("len %u rid %u status 0x%x "
     "ver_major %u ver_minor %u devflags 0x%x medium 0x%x pktmaxcnt %u "
     "pktmaxsz %u align %u aflistoffset %u aflistsz %u\n",
     le32toh(msg->rm_len),
     le32toh(msg->rm_rid),
     le32toh(msg->rm_status),
     le32toh(msg->rm_ver_major),
     le32toh(msg->rm_ver_minor),
     le32toh(msg->rm_devflags),
     le32toh(msg->rm_medium),
     le32toh(msg->rm_pktmaxcnt),
     le32toh(msg->rm_pktmaxsz),
     le32toh(msg->rm_align),
     le32toh(msg->rm_aflistoffset),
     le32toh(msg->rm_aflistsz));

 if (le32toh(msg->rm_status) != RNDIS_STATUS_SUCCESS) {
  DPRINTF("init failed 0x%x\n", le32toh(msg->rm_status));
  return (le32toh(msg->rm_status));
 }
 if (le32toh(msg->rm_devflags) != RNDIS_DF_CONNECTIONLESS) {
  DPRINTF("wrong device type (current type: 0x%x)\n",
      le32toh(msg->rm_devflags));
  return (RNDIS_STATUS_FAILURE);
 }
 if (le32toh(msg->rm_medium) != RNDIS_MEDIUM_802_3) {
  DPRINTF("medium not 802.3 (current medium: 0x%x)\n",
      le32toh(msg->rm_medium));
  return (RNDIS_STATUS_FAILURE);
 }
 sc->sc_lim_pktsz = le32toh(msg->rm_pktmaxsz);

 return (le32toh(msg->rm_status));
}
