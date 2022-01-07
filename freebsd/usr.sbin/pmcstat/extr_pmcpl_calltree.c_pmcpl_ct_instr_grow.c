
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcpl_ct_instr {int dummy; } ;


 int EX_SOFTWARE ;
 int PMCPL_CT_GROWSIZE ;
 int bzero (char*,unsigned int) ;
 int errx (int ,char*) ;
 int max (int,int ) ;
 struct pmcpl_ct_instr* reallocarray (struct pmcpl_ct_instr*,unsigned int,int) ;

__attribute__((used)) static void
pmcpl_ct_instr_grow(int cursize, int *maxsize, struct pmcpl_ct_instr **items)
{
 unsigned int nmaxsize;

 if (cursize < *maxsize)
  return;

 nmaxsize = *maxsize + max(cursize + 1 - *maxsize, PMCPL_CT_GROWSIZE);
 *items = reallocarray(*items, nmaxsize, sizeof(struct pmcpl_ct_instr));
 if (*items == ((void*)0))
  errx(EX_SOFTWARE, "ERROR: out of memory");
 bzero((char *)*items + *maxsize * sizeof(struct pmcpl_ct_instr),
     (nmaxsize - *maxsize) * sizeof(struct pmcpl_ct_instr));
 *maxsize = nmaxsize;
}
