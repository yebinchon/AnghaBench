
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int mtx_lock_flags_ (int ,int ,char const*,int) ;
 int vm_page_lockptr (int ) ;

void
vm_page_lock_KBI(vm_page_t m, const char *file, int line)
{

 mtx_lock_flags_(vm_page_lockptr(m), 0, file, line);
}
