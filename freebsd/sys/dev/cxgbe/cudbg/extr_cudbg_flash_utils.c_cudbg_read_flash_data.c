
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_hdr {int dummy; } ;
struct cudbg_flash_hdr {int dummy; } ;
struct cudbg_entity_hdr {int dummy; } ;


 int CUDBG_MAX_ENTITY ;
 int cudbg_read_flash (void*,void*,int,int) ;

int cudbg_read_flash_data(void *handle, void *buf, u32 buf_size)
{
 int rc;
 u32 total_hdr_size, data_header_size;
 void *payload = ((void*)0);
 u32 payload_size = 0;

 data_header_size = CUDBG_MAX_ENTITY * sizeof(struct cudbg_entity_hdr) +
  sizeof(struct cudbg_hdr);
 total_hdr_size = data_header_size + sizeof(struct cudbg_flash_hdr);


 rc = cudbg_read_flash(handle, buf, total_hdr_size, 0);
 if (rc != 0)
  goto out;
 payload = (char *)buf + total_hdr_size;
 payload_size = buf_size - total_hdr_size;


 rc = cudbg_read_flash(handle, payload, payload_size, 1);
 if (rc != 0)
  goto out;

out:
 return rc;
}
