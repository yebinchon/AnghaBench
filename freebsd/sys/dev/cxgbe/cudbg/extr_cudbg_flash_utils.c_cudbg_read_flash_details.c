
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_flash_hdr {int dummy; } ;


 int cudbg_read_flash (void*,void*,int,int ) ;

int cudbg_read_flash_details(void *handle, struct cudbg_flash_hdr *data)
{
 int rc;
 rc = cudbg_read_flash(handle, (void *)data,
         sizeof(struct cudbg_flash_hdr), 0);

 return rc;
}
