
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int num_chunks; scalar_t__* chunks; } ;
typedef TYPE_1__ sctp_auth_chklist_t ;



int
sctp_pack_auth_chunks(const sctp_auth_chklist_t *list, uint8_t *ptr)
{
 int i, size = 0;

 if (list == ((void*)0))
  return (0);

 if (list->num_chunks <= 32) {

  for (i = 0; i < 256; i++) {
   if (list->chunks[i] != 0) {
    *ptr++ = i;
    size++;
   }
  }
 } else {
  int index, offset;


  for (i = 0; i < 256; i++) {
   if (list->chunks[i] != 0) {
    index = i / 8;
    offset = i % 8;
    ptr[index] |= (1 << offset);
   }
  }
  size = 32;
 }
 return (size);
}
