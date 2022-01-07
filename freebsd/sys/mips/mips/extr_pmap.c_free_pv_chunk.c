
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
struct pv_chunk {int dummy; } ;
struct TYPE_5__ {int phys_addr; } ;


 int MIPS_DIRECT_TO_PHYS (int ) ;
 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int PV_STAT (scalar_t__) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 scalar_t__ _NPCPV ;
 int dump_drop_page (int ) ;
 int pc_chunk_count ;
 int pc_chunk_frees ;
 int pc_lru ;
 int pv_chunks ;
 int pv_entry_spare ;
 int vm_page_free (TYPE_1__*) ;
 int vm_page_unwire_noq (TYPE_1__*) ;

__attribute__((used)) static void
free_pv_chunk(struct pv_chunk *pc)
{
 vm_page_t m;

  TAILQ_REMOVE(&pv_chunks, pc, pc_lru);
 PV_STAT(pv_entry_spare -= _NPCPV);
 PV_STAT(pc_chunk_count--);
 PV_STAT(pc_chunk_frees++);

 m = PHYS_TO_VM_PAGE(MIPS_DIRECT_TO_PHYS((vm_offset_t)pc));
 dump_drop_page(m->phys_addr);
 vm_page_unwire_noq(m);
 vm_page_free(m);
}
