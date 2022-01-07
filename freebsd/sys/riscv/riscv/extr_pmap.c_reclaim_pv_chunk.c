
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct rwlock {int dummy; } ;
typedef int pmap_t ;


 int panic (char*) ;

__attribute__((used)) static vm_page_t
reclaim_pv_chunk(pmap_t locked_pmap, struct rwlock **lockp)
{

 panic("RISCVTODO: reclaim_pv_chunk");
}
