
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct mcp_gen_header {int dummy; } ;
struct TYPE_4__ {size_t sram_size; int fw_ver_major; int fw_ver_minor; int fw_ver_tiny; int adopted_rx_filter_bug; int dev; int mem_res; scalar_t__ sram; } ;
typedef TYPE_1__ mxge_softc_t ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ MCP_HEADER_PTR_OFFSET ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int bus_space_read_region_1 (int ,int ,size_t,char*,size_t const) ;
 int device_printf (int ,char*,...) ;
 int free (struct mcp_gen_header*,int ) ;
 size_t htobe32 (int volatile) ;
 struct mcp_gen_header* malloc (size_t const,int ,int ) ;
 int mxge_validate_firmware (TYPE_1__*,struct mcp_gen_header*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
mxge_adopt_running_firmware(mxge_softc_t *sc)
{
 struct mcp_gen_header *hdr;
 const size_t bytes = sizeof (struct mcp_gen_header);
 size_t hdr_offset;
 int status;


 hdr_offset = htobe32(*(volatile uint32_t *)
        (sc->sram + MCP_HEADER_PTR_OFFSET));

 if ((hdr_offset & 3) || hdr_offset + sizeof(*hdr) > sc->sram_size) {
  device_printf(sc->dev,
         "Running firmware has bad header offset (%d)\n",
         (int)hdr_offset);
  return EIO;
 }



 hdr = malloc(bytes, M_DEVBUF, M_NOWAIT);
 if (hdr == ((void*)0)) {
  device_printf(sc->dev, "could not malloc firmware hdr\n");
  return ENOMEM;
 }
 bus_space_read_region_1(rman_get_bustag(sc->mem_res),
    rman_get_bushandle(sc->mem_res),
    hdr_offset, (char *)hdr, bytes);
 status = mxge_validate_firmware(sc, hdr);
 free(hdr, M_DEVBUF);






 if (sc->fw_ver_major == 1 && sc->fw_ver_minor == 4 &&
     sc->fw_ver_tiny >= 4 && sc->fw_ver_tiny <= 11) {
  sc->adopted_rx_filter_bug = 1;
  device_printf(sc->dev, "Adopting fw %d.%d.%d: "
         "working around rx filter bug\n",
         sc->fw_ver_major, sc->fw_ver_minor,
         sc->fw_ver_tiny);
 }

 return status;
}
