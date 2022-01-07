
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct inpcbinfo {scalar_t__ ipi_npcbgroups; scalar_t__ ipi_hashfields; struct inpcbgroup* ipi_pcbgroups; int ipi_wildmask; int ipi_wildbase; int ipi_listhead; } ;
struct inpcbgroup {int ipg_hashmask; int ipg_hashbase; } ;


 int CK_LIST_EMPTY (int ) ;
 int INP_GROUP_LOCK_DESTROY (struct inpcbgroup*) ;
 int KASSERT (int ,char*) ;
 int M_PCB ;
 int free (struct inpcbgroup*,int ) ;
 int hashdestroy (int ,int ,int ) ;

void
in_pcbgroup_destroy(struct inpcbinfo *pcbinfo)
{
 struct inpcbgroup *pcbgroup;
 u_int pgn;

 if (pcbinfo->ipi_npcbgroups == 0)
  return;

 for (pgn = 0; pgn < pcbinfo->ipi_npcbgroups; pgn++) {
  pcbgroup = &pcbinfo->ipi_pcbgroups[pgn];
  KASSERT(CK_LIST_EMPTY(pcbinfo->ipi_listhead),
      ("in_pcbinfo_destroy: listhead not empty"));
  INP_GROUP_LOCK_DESTROY(pcbgroup);
  hashdestroy(pcbgroup->ipg_hashbase, M_PCB,
      pcbgroup->ipg_hashmask);
 }
 hashdestroy(pcbinfo->ipi_wildbase, M_PCB, pcbinfo->ipi_wildmask);
 free(pcbinfo->ipi_pcbgroups, M_PCB);
 pcbinfo->ipi_pcbgroups = ((void*)0);
 pcbinfo->ipi_npcbgroups = 0;
 pcbinfo->ipi_hashfields = 0;
}
