
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int mtx_unlock_flags_ (int ,int ,char const*,int) ;
 int vm_page_lockptr (int ) ;

void
vm_page_unlock_KBI(vm_page_t m, const char *file, int line)
{

 mtx_unlock_flags_(vm_page_lockptr(m), 0, file, line);
}
