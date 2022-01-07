
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fw_ver_major; scalar_t__ fw_ver_minor; int dev; int fw_version; int fw_ver_tiny; } ;
typedef TYPE_1__ mxge_softc_t ;
struct TYPE_6__ {int version; int mcp_type; } ;
typedef TYPE_2__ mcp_gen_header_t ;


 int EINVAL ;
 int EIO ;
 scalar_t__ MCP_TYPE_ETH ;
 scalar_t__ MXGEFW_VERSION_MAJOR ;
 scalar_t__ MXGEFW_VERSION_MINOR ;
 scalar_t__ be32toh (int ) ;
 int device_printf (int ,char*,scalar_t__,...) ;
 scalar_t__ mxge_verbose ;
 int sscanf (int ,char*,scalar_t__*,scalar_t__*,int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
mxge_validate_firmware(mxge_softc_t *sc, const mcp_gen_header_t *hdr)
{


 if (be32toh(hdr->mcp_type) != MCP_TYPE_ETH) {
  device_printf(sc->dev, "Bad firmware type: 0x%x\n",
         be32toh(hdr->mcp_type));
  return EIO;
 }


 strlcpy(sc->fw_version, hdr->version, sizeof(sc->fw_version));
 if (mxge_verbose)
  device_printf(sc->dev, "firmware id: %s\n", hdr->version);

 sscanf(sc->fw_version, "%d.%d.%d", &sc->fw_ver_major,
        &sc->fw_ver_minor, &sc->fw_ver_tiny);

 if (!(sc->fw_ver_major == MXGEFW_VERSION_MAJOR
       && sc->fw_ver_minor == MXGEFW_VERSION_MINOR)) {
  device_printf(sc->dev, "Found firmware version %s\n",
         sc->fw_version);
  device_printf(sc->dev, "Driver needs %d.%d\n",
         MXGEFW_VERSION_MAJOR, MXGEFW_VERSION_MINOR);
  return EINVAL;
 }
 return 0;

}
