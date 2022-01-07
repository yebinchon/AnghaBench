
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cudbg_flash_sec_info {int skip_size; void* sec_data; } ;
struct cudbg_private {struct cudbg_flash_sec_info sec_info; } ;
struct cudbg_hdr {int data_len; } ;
struct cudbg_flash_hdr {int hdr_len; int data_len; int timestamp; int build_ver; int minor_ver; int major_ver; int signature; } ;
struct cudbg_entity_hdr {int start_offset; } ;
struct cudbg_buffer {scalar_t__ data; } ;


 int CUDBG_FL_BUILD_VERSION ;
 int CUDBG_FL_MAJOR_VERSION ;
 int CUDBG_FL_MINOR_VERSION ;
 int CUDBG_FL_SIGNATURE ;
 int CUDBG_MAX_ENTITY ;
 int CUDBG_SF_SECTOR_SIZE ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static void update_headers(void *handle, struct cudbg_buffer *dbg_buff,
      u64 timestamp, u32 cur_entity_hdr_offset,
      u32 start_offset, u32 ext_size)
{
 struct cudbg_private *priv = handle;
 struct cudbg_flash_sec_info *sec_info = &priv->sec_info;
 void *sec_hdr;
 struct cudbg_hdr *cudbg_hdr;
 struct cudbg_flash_hdr *flash_hdr;
 struct cudbg_entity_hdr *entity_hdr;
 u32 hdr_offset;
 u32 data_hdr_size;
 u32 total_hdr_size;
 u32 sec_hdr_start_addr;

 data_hdr_size = CUDBG_MAX_ENTITY * sizeof(struct cudbg_entity_hdr) +
    sizeof(struct cudbg_hdr);
 total_hdr_size = data_hdr_size + sizeof(struct cudbg_flash_hdr);
 sec_hdr_start_addr = CUDBG_SF_SECTOR_SIZE - total_hdr_size;
 sec_hdr = sec_info->sec_data + sec_hdr_start_addr;

 flash_hdr = (struct cudbg_flash_hdr *)(sec_hdr);
 cudbg_hdr = (struct cudbg_hdr *)dbg_buff->data;




 if ((start_offset - sec_info->skip_size) == data_hdr_size) {
  flash_hdr->signature = CUDBG_FL_SIGNATURE;
  flash_hdr->major_ver = CUDBG_FL_MAJOR_VERSION;
  flash_hdr->minor_ver = CUDBG_FL_MINOR_VERSION;
  flash_hdr->build_ver = CUDBG_FL_BUILD_VERSION;
  flash_hdr->hdr_len = sizeof(struct cudbg_flash_hdr);
  hdr_offset = sizeof(struct cudbg_flash_hdr);

  memcpy((void *)((char *)sec_hdr + hdr_offset),
         (void *)((char *)dbg_buff->data), data_hdr_size);
 } else
  memcpy((void *)((char *)sec_hdr +
   sizeof(struct cudbg_flash_hdr) +
   cur_entity_hdr_offset),
   (void *)((char *)dbg_buff->data +
   cur_entity_hdr_offset),
   sizeof(struct cudbg_entity_hdr));

 hdr_offset = data_hdr_size + sizeof(struct cudbg_flash_hdr);
 flash_hdr->data_len = cudbg_hdr->data_len - sec_info->skip_size;
 flash_hdr->timestamp = timestamp;

 entity_hdr = (struct cudbg_entity_hdr *)((char *)sec_hdr +
        sizeof(struct cudbg_flash_hdr) +
        cur_entity_hdr_offset);

 entity_hdr->start_offset -= sec_info->skip_size;

 cudbg_hdr = (struct cudbg_hdr *)((char *)sec_hdr +
   sizeof(struct cudbg_flash_hdr));
 cudbg_hdr->data_len = flash_hdr->data_len;
 flash_hdr->data_len += ext_size;
}
