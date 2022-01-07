
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintfptr_t ;
struct pmcstat_image {int dummy; } ;
struct pmcstat_cgnode {int pcg_children; scalar_t__ pcg_nchildren; scalar_t__ pcg_count; int pcg_func; struct pmcstat_image* pcg_image; } ;


 int EX_OSERR ;
 int LIST_INIT (int *) ;
 int err (int ,char*) ;
 struct pmcstat_cgnode* malloc (int) ;

__attribute__((used)) static struct pmcstat_cgnode *
pmcstat_cgnode_allocate(struct pmcstat_image *image, uintfptr_t pc)
{
 struct pmcstat_cgnode *cg;

 if ((cg = malloc(sizeof(*cg))) == ((void*)0))
  err(EX_OSERR, "ERROR: Cannot allocate callgraph node");

 cg->pcg_image = image;
 cg->pcg_func = pc;

 cg->pcg_count = 0;
 cg->pcg_nchildren = 0;
 LIST_INIT(&cg->pcg_children);

 return (cg);
}
