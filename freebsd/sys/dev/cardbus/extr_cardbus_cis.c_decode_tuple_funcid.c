
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct tuple_callbacks {int dummy; } ;
struct cardbus_devinfo {int funcid; } ;
typedef int device_t ;


 scalar_t__ cardbus_cis_debug ;
 struct cardbus_devinfo* device_get_ivars (int ) ;
 char** funcnames ;
 int nitems (char**) ;
 int printf (char*,...) ;

__attribute__((used)) static int
decode_tuple_funcid(device_t cbdev, device_t child, int id,
    int len, uint8_t *tupledata, uint32_t start, uint32_t *off,
    struct tuple_callbacks *info, void *argp)
{
 struct cardbus_devinfo *dinfo = device_get_ivars(child);
 int numnames = nitems(funcnames);
 int i;

 if (cardbus_cis_debug) {
  printf("Functions: ");
  for (i = 0; i < len; i++) {
   if (tupledata[i] < numnames)
    printf("%s", funcnames[tupledata[i]]);
   else
    printf("Unknown(%d)", tupledata[i]);
   if (i < len - 1)
    printf(", ");
  }
  printf("\n");
 }
 if (len > 0)
  dinfo->funcid = tupledata[0];
 return (0);
}
