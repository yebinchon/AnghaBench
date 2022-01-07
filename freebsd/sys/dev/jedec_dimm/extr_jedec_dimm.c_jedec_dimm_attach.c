
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct jedec_dimm_softc {int spd_addr; int tsod_addr; char const* type_str; char const* part_str; char const* serial_str; char const* slotid_str; int capacity_mb; int smbus; int dev; } ;
typedef enum dram_type { ____Placeholder_dram_type } dram_type ;
typedef int device_t ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLTYPE_INT ;


 int EINVAL ;
 int JEDEC_DTI_TSOD ;
 int M_DEVBUF ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int SPD_LEN_DDR3_PARTNUM ;
 int SPD_LEN_DDR3_SERIAL ;
 int SPD_LEN_DDR4_PARTNUM ;
 int SPD_LEN_DDR4_SERIAL ;
 int SPD_OFFSET_DDR3_PARTNUM ;
 int SPD_OFFSET_DDR3_SERIAL ;
 int SPD_OFFSET_DDR3_TSOD_PRESENT ;
 int SPD_OFFSET_DDR4_PARTNUM ;
 int SPD_OFFSET_DDR4_SERIAL ;
 int SPD_OFFSET_DDR4_TSOD_PRESENT ;
 int SPD_OFFSET_DRAM_TYPE ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int ,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,char const*,int ,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TSOD_REG_DEV_REV ;
 int TSOD_REG_MANUFACTURER ;
 scalar_t__ bootverbose ;
 int bzero (struct jedec_dimm_softc*,int) ;
 char* device_get_desc (int ) ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 struct jedec_dimm_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_desc_copy (int ,char*) ;
 int free (char*,int ) ;
 int jedec_dimm_capacity (struct jedec_dimm_softc*,int,int *) ;
 int jedec_dimm_dump (struct jedec_dimm_softc*,int) ;
 int jedec_dimm_field_to_str (struct jedec_dimm_softc*,char const*,int,int ,int ,int) ;
 int jedec_dimm_readw_be (struct jedec_dimm_softc*,int ,int *) ;
 int jedec_dimm_temp_sysctl ;
 char* jedec_dimm_tsod_match (int ,int ) ;
 char* malloc (int,int ,int) ;
 scalar_t__ resource_string_value (int ,int ,char*,char const**) ;
 int smbus_get_addr (int ) ;
 int smbus_readb (int ,int,int ,int*) ;
 int snprintf (char const*,int,char*,...) ;
 char const* strdup (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
jedec_dimm_attach(device_t dev)
{
 uint8_t byte;
 uint16_t devid;
 uint16_t partnum_len;
 uint16_t partnum_offset;
 uint16_t serial_len;
 uint16_t serial_offset;
 uint16_t tsod_present_offset;
 uint16_t vendorid;
 bool tsod_present;
 int rc;
 int new_desc_len;
 enum dram_type type;
 struct jedec_dimm_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *oid;
 struct sysctl_oid_list *children;
 const char *tsod_match;
 const char *slotid_str;
 char *new_desc;

 sc = device_get_softc(dev);
 ctx = device_get_sysctl_ctx(dev);
 oid = device_get_sysctl_tree(dev);
 children = SYSCTL_CHILDREN(oid);

 bzero(sc, sizeof(*sc));
 sc->dev = dev;
 sc->smbus = device_get_parent(dev);
 sc->spd_addr = smbus_get_addr(dev);




 sc->tsod_addr = JEDEC_DTI_TSOD | (sc->spd_addr & 0x0f);


 rc = smbus_readb(sc->smbus, sc->spd_addr, SPD_OFFSET_DRAM_TYPE, &byte);
 if (rc != 0) {
  device_printf(dev, "failed to read dram_type: %d\n", rc);
  goto out;
 }
 type = (enum dram_type) byte;
 switch (type) {
 case 129:
  (void) snprintf(sc->type_str, sizeof(sc->type_str), "DDR3");
  partnum_len = SPD_LEN_DDR3_PARTNUM;
  partnum_offset = SPD_OFFSET_DDR3_PARTNUM;
  serial_len = SPD_LEN_DDR3_SERIAL;
  serial_offset = SPD_OFFSET_DDR3_SERIAL;
  tsod_present_offset = SPD_OFFSET_DDR3_TSOD_PRESENT;
  break;
 case 128:
  (void) snprintf(sc->type_str, sizeof(sc->type_str), "DDR4");
  partnum_len = SPD_LEN_DDR4_PARTNUM;
  partnum_offset = SPD_OFFSET_DDR4_PARTNUM;
  serial_len = SPD_LEN_DDR4_SERIAL;
  serial_offset = SPD_OFFSET_DDR4_SERIAL;
  tsod_present_offset = SPD_OFFSET_DDR4_TSOD_PRESENT;
  break;
 default:
  device_printf(dev, "unsupported dram_type 0x%02x\n", type);
  rc = EINVAL;
  goto out;
 }

 if (bootverbose) {

  (void) jedec_dimm_dump(sc, type);
 }




 rc = jedec_dimm_capacity(sc, type, &sc->capacity_mb);
 if (rc != 0) {
  goto out;
 }

 rc = jedec_dimm_field_to_str(sc, sc->part_str, sizeof(sc->part_str),
     partnum_offset, partnum_len, 1);
 if (rc != 0) {
  goto out;
 }

 rc = jedec_dimm_field_to_str(sc, sc->serial_str, sizeof(sc->serial_str),
     serial_offset, serial_len, 0);
 if (rc != 0) {
  goto out;
 }
 rc = smbus_readb(sc->smbus, sc->spd_addr, tsod_present_offset, &byte);
 if (rc != 0) {
  device_printf(dev, "failed to read TSOD-present byte: %d\n",
      rc);
  goto out;
 }
 if (byte & 0x80) {
  tsod_present = 1;
  rc = jedec_dimm_readw_be(sc, TSOD_REG_MANUFACTURER, &vendorid);
  if (rc != 0) {
   device_printf(dev,
       "failed to read TSOD Manufacturer ID\n");
   rc = 0;
   goto no_tsod;
  }
  rc = jedec_dimm_readw_be(sc, TSOD_REG_DEV_REV, &devid);
  if (rc != 0) {
   device_printf(dev, "failed to read TSOD Device ID\n");
   rc = 0;
   goto no_tsod;
  }

  tsod_match = jedec_dimm_tsod_match(vendorid, devid);
  if (bootverbose) {
   if (tsod_match == ((void*)0)) {
    device_printf(dev,
        "Unknown TSOD Manufacturer and Device IDs,"
        " 0x%x and 0x%x\n", vendorid, devid);
   } else {
    device_printf(dev,
        "TSOD: %s\n", tsod_match);
   }
  }
 } else {
no_tsod:
  tsod_match = ((void*)0);
  tsod_present = 0;
 }

 SYSCTL_ADD_STRING(ctx, children, OID_AUTO, "type",
     CTLFLAG_RD | CTLFLAG_MPSAFE, sc->type_str, 0,
     "DIMM type");

 SYSCTL_ADD_UINT(ctx, children, OID_AUTO, "capacity",
     CTLFLAG_RD | CTLFLAG_MPSAFE, ((void*)0), sc->capacity_mb,
     "DIMM capacity (MB)");

 SYSCTL_ADD_STRING(ctx, children, OID_AUTO, "part",
     CTLFLAG_RD | CTLFLAG_MPSAFE, sc->part_str, 0,
     "DIMM Part Number");

 SYSCTL_ADD_STRING(ctx, children, OID_AUTO, "serial",
     CTLFLAG_RD | CTLFLAG_MPSAFE, sc->serial_str, 0,
     "DIMM Serial Number");


 if (tsod_present && (tsod_match != ((void*)0))) {
  SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "temp",
      CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, 0,
      jedec_dimm_temp_sysctl, "IK", "DIMM temperature (deg C)");
 }


 if (resource_string_value(device_get_name(dev), device_get_unit(dev),
     "slotid", &slotid_str) == 0) {
  if (slotid_str != ((void*)0)) {
   sc->slotid_str = strdup(slotid_str, M_DEVBUF);
   SYSCTL_ADD_STRING(ctx, children, OID_AUTO, "slotid",
       CTLFLAG_RD | CTLFLAG_MPSAFE, sc->slotid_str, 0,
       "DIMM Slot Identifier");
  }
 }




 if ((tsod_match != ((void*)0)) || (sc->slotid_str != ((void*)0))) {
  new_desc_len = strlen(device_get_desc(dev));
  if (tsod_match != ((void*)0)) {
   new_desc_len += strlen(tsod_match);
   new_desc_len += 4;
  }
  if (sc->slotid_str != ((void*)0)) {
   new_desc_len += strlen(sc->slotid_str);
   new_desc_len += 3;
  }
  new_desc_len++;
  new_desc = malloc(new_desc_len, M_TEMP, (M_WAITOK | M_ZERO));
  (void) snprintf(new_desc, new_desc_len, "%s%s%s%s%s%s",
      device_get_desc(dev),
      (tsod_match ? " w/ " : ""),
      (tsod_match ? tsod_match : ""),
      (sc->slotid_str ? " (" : ""),
      (sc->slotid_str ? sc->slotid_str : ""),
      (sc->slotid_str ? ")" : ""));
  device_set_desc_copy(dev, new_desc);
  free(new_desc, M_TEMP);
 }

out:
 return (rc);
}
