
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__* chunks; } ;
typedef TYPE_1__ sctp_auth_chklist_t ;



int
sctp_serialize_auth_chunks(const sctp_auth_chklist_t *list, uint8_t *ptr)
{
 int i, count = 0;

 if (list == ((void*)0))
  return (0);

 for (i = 0; i < 256; i++) {
  if (list->chunks[i] != 0) {
   *ptr++ = i;
   count++;
  }
 }
 return (count);
}
