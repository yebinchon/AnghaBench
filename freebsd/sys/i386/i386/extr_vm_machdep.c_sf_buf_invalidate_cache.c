
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int boolean_t ;


 int sf_buf_invalidate ;
 int sf_buf_process_page (int ,int ) ;

boolean_t
sf_buf_invalidate_cache(vm_page_t m)
{

 return (sf_buf_process_page(m, sf_buf_invalidate));
}
