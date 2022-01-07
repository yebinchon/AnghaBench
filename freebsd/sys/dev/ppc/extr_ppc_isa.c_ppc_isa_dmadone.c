
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int ppc_dmachan; int ppc_dmacnt; int ppc_dmaddr; int ppc_dmaflags; } ;


 int isa_dmadone (int ,int ,int ,int ) ;

__attribute__((used)) static void
ppc_isa_dmadone(struct ppc_data *ppc)
{
 isa_dmadone(ppc->ppc_dmaflags, ppc->ppc_dmaddr, ppc->ppc_dmacnt,
     ppc->ppc_dmachan);
}
