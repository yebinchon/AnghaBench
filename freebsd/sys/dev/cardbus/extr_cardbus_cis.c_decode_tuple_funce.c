
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct tuple_callbacks {int dummy; } ;
struct TYPE_3__ {int nid; } ;
struct TYPE_4__ {TYPE_1__ lan; } ;
struct cardbus_devinfo {int funcid; int fepresent; TYPE_2__ funce; } ;
typedef int device_t ;




 int bcopy (int*,int ,int) ;
 scalar_t__ cardbus_cis_debug ;
 struct cardbus_devinfo* device_get_ivars (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int
decode_tuple_funce(device_t cbdev, device_t child, int id,
    int len, uint8_t *tupledata, uint32_t start, uint32_t *off,
    struct tuple_callbacks *info, void *argp)
{
 struct cardbus_devinfo *dinfo = device_get_ivars(child);
 int type, i;

 if (cardbus_cis_debug) {
  printf("Function Extension: ");
  for (i = 0; i < len; i++)
   printf("%02x", tupledata[i]);
  printf("\n");
 }
 if (len < 2)
  return (0);
 type = tupledata[0];
 switch (dinfo->funcid) {
 case 129:
  switch (type) {
  case 128:
   if (tupledata[1] > sizeof(dinfo->funce.lan.nid)) {

    return (0);
   }
   bcopy(tupledata + 2, dinfo->funce.lan.nid,
       tupledata[1]);
   break;
  }
  dinfo->fepresent |= 1<<type;
  break;
 }
 return (0);
}
