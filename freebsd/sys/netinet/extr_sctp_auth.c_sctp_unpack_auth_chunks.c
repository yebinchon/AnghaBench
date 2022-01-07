
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sctp_auth_chklist_t ;


 int sctp_auth_add_chunk (int,int *) ;

int
sctp_unpack_auth_chunks(const uint8_t *ptr, uint8_t num_chunks,
    sctp_auth_chklist_t *list)
{
 int i;
 int size;

 if (list == ((void*)0))
  return (0);

 if (num_chunks <= 32) {

  for (i = 0; i < num_chunks; i++) {
   (void)sctp_auth_add_chunk(*ptr++, list);
  }
  size = num_chunks;
 } else {
  int index, offset;


  for (index = 0; index < 32; index++) {
   for (offset = 0; offset < 8; offset++) {
    if (ptr[index] & (1 << offset)) {
     (void)sctp_auth_add_chunk((index * 8) + offset, list);
    }
   }
  }
  size = 32;
 }
 return (size);
}
