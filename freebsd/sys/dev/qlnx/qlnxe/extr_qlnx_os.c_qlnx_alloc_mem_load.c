
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qlnx_fastpath {int dummy; } ;
struct TYPE_4__ {int num_rss; struct qlnx_fastpath* fp_array; } ;
typedef TYPE_1__ qlnx_host_t ;


 int qlnx_alloc_mem_fp (TYPE_1__*,struct qlnx_fastpath*) ;

__attribute__((used)) static int
qlnx_alloc_mem_load(qlnx_host_t *ha)
{
        int rc = 0, rss_id;

        for (rss_id = 0; rss_id < ha->num_rss; rss_id++) {
                struct qlnx_fastpath *fp = &ha->fp_array[rss_id];

                rc = qlnx_alloc_mem_fp(ha, fp);
                if (rc)
                        break;
        }
 return (rc);
}
