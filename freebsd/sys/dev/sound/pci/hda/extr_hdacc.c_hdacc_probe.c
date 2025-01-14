
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int device_t ;
typedef int buf ;
struct TYPE_3__ {int id; scalar_t__ revid; char* name; } ;


 int BUS_PROBE_DEFAULT ;
 int HDA_DEV_MATCH (int,int) ;
 int device_set_desc_copy (int ,char*) ;
 int hda_get_device_id (int ) ;
 scalar_t__ hda_get_revision_id (int ) ;
 int hda_get_stepping_id (int ) ;
 scalar_t__ hda_get_vendor_id (int ) ;
 TYPE_1__* hdacc_codecs ;
 int nitems (TYPE_1__*) ;
 int snprintf (char*,int,char*,...) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
hdacc_probe(device_t dev)
{
 uint32_t id, revid;
 char buf[128];
 int i;

 id = ((uint32_t)hda_get_vendor_id(dev) << 16) + hda_get_device_id(dev);
 revid = ((uint32_t)hda_get_revision_id(dev) << 8) + hda_get_stepping_id(dev);

 for (i = 0; i < nitems(hdacc_codecs); i++) {
  if (!HDA_DEV_MATCH(hdacc_codecs[i].id, id))
   continue;
  if (hdacc_codecs[i].revid != 0 &&
      hdacc_codecs[i].revid != revid)
   continue;
  break;
 }
 if (i < nitems(hdacc_codecs)) {
  if ((hdacc_codecs[i].id & 0xffff) != 0xffff)
   strlcpy(buf, hdacc_codecs[i].name, sizeof(buf));
  else
   snprintf(buf, sizeof(buf), "%s (0x%04x)",
       hdacc_codecs[i].name, hda_get_device_id(dev));
 } else
  snprintf(buf, sizeof(buf), "Generic (0x%04x)", id);
 strlcat(buf, " HDA CODEC", sizeof(buf));
 device_set_desc_copy(dev, buf);
 return (BUS_PROBE_DEFAULT);
}
