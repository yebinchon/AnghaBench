
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct pmc_process {int dummy; } ;


 int PMC_FLAG_ALLOCATE ;
 int PMC_FLAG_NONE ;
 struct pmc_process* pmc_find_process_descriptor (int ,int ) ;
 int pmc_find_thread_descriptor (struct pmc_process*,struct thread*,int ) ;

__attribute__((used)) static void
pmc_process_thread_add(struct thread *td)
{
 struct pmc_process *pmc;

 pmc = pmc_find_process_descriptor(td->td_proc, PMC_FLAG_NONE);
 if (pmc != ((void*)0))
  pmc_find_thread_descriptor(pmc, td, PMC_FLAG_ALLOCATE);
}
