
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_hdr {int data_len; } ;
struct cudbg_entity_hdr {int size; int next_ext_offset; } ;
struct cudbg_buffer {int size; int offset; } ;


 int CUDBG_STATUS_BUFFER_SHORT ;

__attribute__((used)) static int get_next_ext_entity_hdr(void *outbuf, u32 *ext_size,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_entity_hdr **entity_hdr)
{
 struct cudbg_hdr *cudbg_hdr = (struct cudbg_hdr *)outbuf;
 int rc = 0;
 u32 ext_offset = cudbg_hdr->data_len;
 *ext_size = 0;

 if (dbg_buff->size - dbg_buff->offset <=
   sizeof(struct cudbg_entity_hdr)) {
  rc = CUDBG_STATUS_BUFFER_SHORT;
  goto err;
 }

 *entity_hdr = (struct cudbg_entity_hdr *)
         ((char *)outbuf + cudbg_hdr->data_len);


 while ((*entity_hdr)->size) {

  ext_offset += sizeof(struct cudbg_entity_hdr) +
         (*entity_hdr)->size;

  *ext_size += (*entity_hdr)->size +
         sizeof(struct cudbg_entity_hdr);

  if (dbg_buff->size - dbg_buff->offset + *ext_size <=
   sizeof(struct cudbg_entity_hdr)) {
   rc = CUDBG_STATUS_BUFFER_SHORT;
   goto err;
  }

  if (ext_offset != (*entity_hdr)->next_ext_offset) {
   ext_offset -= sizeof(struct cudbg_entity_hdr) +
         (*entity_hdr)->size;
   break;
  }

  (*entity_hdr)->next_ext_offset = *ext_size;

  *entity_hdr = (struct cudbg_entity_hdr *)
        ((char *)outbuf +
        ext_offset);
 }


 dbg_buff->offset = ext_offset;
err:
 return rc;
}
