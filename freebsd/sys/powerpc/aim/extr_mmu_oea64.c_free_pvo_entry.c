
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvo_entry {int pvo_vaddr; } ;


 int PVO_BOOTSTRAP ;
 int moea64_pvo_zone ;
 int uma_zfree (int ,struct pvo_entry*) ;

__attribute__((used)) static void
free_pvo_entry(struct pvo_entry *pvo)
{

 if (!(pvo->pvo_vaddr & PVO_BOOTSTRAP))
  uma_zfree(moea64_pvo_zone, pvo);
}
