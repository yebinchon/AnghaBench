
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct jedec_dimm_tsod_dev {scalar_t__ vendor_id; scalar_t__ device_id; char const* description; } ;


 struct jedec_dimm_tsod_dev* known_tsod_devices ;
 int nitems (struct jedec_dimm_tsod_dev*) ;

__attribute__((used)) static const char *
jedec_dimm_tsod_match(uint16_t vid, uint16_t did)
{
 const struct jedec_dimm_tsod_dev *d;
 int i;

 for (i = 0; i < nitems(known_tsod_devices); i++) {
  d = &known_tsod_devices[i];
  if ((vid == d->vendor_id) && ((did >> 8) == d->device_id)) {
   return (d->description);
  }
 }




 if ((did >> 8) == 0x22) {
  return ("TSE2004av compliant TSOD");
 }

 return (((void*)0));
}
