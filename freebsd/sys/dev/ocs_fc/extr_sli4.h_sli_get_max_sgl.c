
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int sgl_page_sizes; int max_sgl_pages; } ;
struct TYPE_5__ {TYPE_1__ config; int os; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_sge_t ;


 int SLI_PAGE_SIZE ;
 int ocs_log_test (int ,char*,int) ;

__attribute__((used)) static inline uint32_t
sli_get_max_sgl(sli4_t *sli4)
{

 if (sli4->config.sgl_page_sizes != 1) {
  ocs_log_test(sli4->os, "unsupported SGL page sizes %#x\n",
    sli4->config.sgl_page_sizes);
  return 0;
 }

 return ((sli4->config.max_sgl_pages * SLI_PAGE_SIZE) / sizeof(sli4_sge_t));
}
