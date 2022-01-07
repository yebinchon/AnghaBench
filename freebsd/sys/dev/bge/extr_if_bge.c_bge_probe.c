
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct bge_vendor {char* v_name; } ;
struct bge_type {scalar_t__ bge_vid; scalar_t__ bge_did; } ;
struct bge_softc {int bge_dev; } ;
struct bge_revision {char* br_name; } ;
typedef int model ;
typedef int device_t ;
typedef int buf ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int bge_chipid (int ) ;
 struct bge_type* bge_devs ;
 scalar_t__ bge_has_eaddr (struct bge_softc*) ;
 struct bge_revision* bge_lookup_rev (int) ;
 struct bge_vendor* bge_lookup_vendor (scalar_t__) ;
 struct bge_softc* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 scalar_t__ pci_get_vpd_ident (int ,char const**) ;
 int snprintf (char*,int,char*,char const*,...) ;

__attribute__((used)) static int
bge_probe(device_t dev)
{
 char buf[96];
 char model[64];
 const struct bge_revision *br;
 const char *pname;
 struct bge_softc *sc;
 const struct bge_type *t = bge_devs;
 const struct bge_vendor *v;
 uint32_t id;
 uint16_t did, vid;

 sc = device_get_softc(dev);
 sc->bge_dev = dev;
 vid = pci_get_vendor(dev);
 did = pci_get_device(dev);
 while(t->bge_vid != 0) {
  if ((vid == t->bge_vid) && (did == t->bge_did)) {
   id = bge_chipid(dev);
   br = bge_lookup_rev(id);
   if (bge_has_eaddr(sc) &&
       pci_get_vpd_ident(dev, &pname) == 0)
    snprintf(model, sizeof(model), "%s", pname);
   else {
    v = bge_lookup_vendor(vid);
    snprintf(model, sizeof(model), "%s %s",
        v != ((void*)0) ? v->v_name : "Unknown",
        br != ((void*)0) ? br->br_name :
        "NetXtreme/NetLink Ethernet Controller");
   }
   snprintf(buf, sizeof(buf), "%s, %sASIC rev. %#08x",
       model, br != ((void*)0) ? "" : "unknown ", id);
   device_set_desc_copy(dev, buf);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}
