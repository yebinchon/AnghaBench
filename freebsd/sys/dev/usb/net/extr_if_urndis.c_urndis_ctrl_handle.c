
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int ue_dev; } ;
struct urndis_softc {TYPE_1__ sc_ue; } ;
struct rndis_comp_hdr {int rm_type; int rm_status; } ;


 int DPRINTF (char*) ;





 int RNDIS_STATUS_FAILURE ;
 int device_printf (int ,char*,int) ;
 int le32toh (int ) ;
 int urndis_ctrl_handle_init (struct urndis_softc*,struct rndis_comp_hdr*) ;
 int urndis_ctrl_handle_query (struct urndis_softc*,struct rndis_comp_hdr*,void const**,scalar_t__*) ;
 int urndis_ctrl_handle_reset (struct urndis_softc*,struct rndis_comp_hdr*) ;

__attribute__((used)) static uint32_t
urndis_ctrl_handle(struct urndis_softc *sc, struct rndis_comp_hdr *hdr,
    const void **buf, uint16_t *bufsz)
{
 uint32_t rval;

 DPRINTF("\n");

 if (buf != ((void*)0) && bufsz != ((void*)0)) {
  *buf = ((void*)0);
  *bufsz = 0;
 }
 switch (le32toh(hdr->rm_type)) {
 case 132:
  rval = urndis_ctrl_handle_init(sc, hdr);
  break;

 case 130:
  rval = urndis_ctrl_handle_query(sc, hdr, buf, bufsz);
  break;

 case 129:
  rval = urndis_ctrl_handle_reset(sc, hdr);
  break;

 case 131:
 case 128:
  rval = le32toh(hdr->rm_status);
  break;

 default:
  device_printf(sc->sc_ue.ue_dev,
      "ctrl message error: unknown event 0x%x\n",
      le32toh(hdr->rm_type));
  rval = RNDIS_STATUS_FAILURE;
  break;
 }
 return (rval);
}
