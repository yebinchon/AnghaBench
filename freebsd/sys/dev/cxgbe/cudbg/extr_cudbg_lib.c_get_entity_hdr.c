
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cudbg_hdr {scalar_t__ hdr_len; } ;
struct cudbg_entity_hdr {int dummy; } ;


 int CUDBG_STATUS_SMALL_BUFF ;

int get_entity_hdr(void *outbuf, int i, u32 size,
     struct cudbg_entity_hdr **entity_hdr)
{
 int rc = 0;
 struct cudbg_hdr *cudbg_hdr = (struct cudbg_hdr *)outbuf;

 if (cudbg_hdr->hdr_len + (sizeof(struct cudbg_entity_hdr)*i) > size)
  return CUDBG_STATUS_SMALL_BUFF;

 *entity_hdr = (struct cudbg_entity_hdr *)
        ((char *)outbuf+cudbg_hdr->hdr_len +
         (sizeof(struct cudbg_entity_hdr)*(i-1)));
 return rc;
}
