
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct tuple_callbacks {int dummy; } ;
struct cis_buffer {int len; int* buffer; } ;
typedef int device_t ;


 int CISTPL_END ;
 int ENOSPC ;

__attribute__((used)) static int
cardbus_build_cis(device_t cbdev, device_t child, int id,
    int len, uint8_t *tupledata, uint32_t start, uint32_t *off,
    struct tuple_callbacks *info, void *argp)
{
 struct cis_buffer *cis;
 int i;

 cis = (struct cis_buffer *)argp;



 if (id == CISTPL_END) {
  if (cis->len + 1 > sizeof(cis->buffer)) {
   cis->len = 0;
   return (ENOSPC);
  }
  cis->buffer[cis->len++] = id;
  return (0);
 }
 if (cis->len + 2 + len > sizeof(cis->buffer)) {
  cis->len = 0;
  return (ENOSPC);
 }
 cis->buffer[cis->len++] = id;
 cis->buffer[cis->len++] = len;
 for (i = 0; i < len; i++)
  cis->buffer[cis->len++] = tupledata[i];
 return (0);
}
