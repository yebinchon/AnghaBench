
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct inpcbinfo {scalar_t__ ipi_npcbgroups; struct inpcbgroup* ipi_pcbgroups; int ipi_wildmask; void* ipi_wildbase; scalar_t__ ipi_hashfields; } ;
struct inpcbgroup {scalar_t__ ipg_cpu; int ipg_hashmask; void* ipg_hashbase; } ;


 int INP_GROUP_LOCK_INIT (struct inpcbgroup*,char*) ;
 scalar_t__ IPI_HASHFIELDS_NONE ;
 int M_PCB ;
 int M_WAITOK ;
 int M_ZERO ;
 void* hashinit (int,int ,int *) ;
 struct inpcbgroup* malloc (scalar_t__,int ,int) ;
 int mp_ncpus ;
 scalar_t__ rss_getcpu (scalar_t__) ;
 scalar_t__ rss_getnumbuckets () ;

void
in_pcbgroup_init(struct inpcbinfo *pcbinfo, u_int hashfields,
    int hash_nelements)
{
 struct inpcbgroup *pcbgroup;
 u_int numpcbgroups, pgn;





 if (hashfields == IPI_HASHFIELDS_NONE)
  return;







 if (mp_ncpus == 1)
  return;
 numpcbgroups = mp_ncpus;


 pcbinfo->ipi_hashfields = hashfields;
 pcbinfo->ipi_pcbgroups = malloc(numpcbgroups *
     sizeof(*pcbinfo->ipi_pcbgroups), M_PCB, M_WAITOK | M_ZERO);
 pcbinfo->ipi_npcbgroups = numpcbgroups;
 pcbinfo->ipi_wildbase = hashinit(hash_nelements, M_PCB,
     &pcbinfo->ipi_wildmask);
 for (pgn = 0; pgn < pcbinfo->ipi_npcbgroups; pgn++) {
  pcbgroup = &pcbinfo->ipi_pcbgroups[pgn];
  pcbgroup->ipg_hashbase = hashinit(hash_nelements, M_PCB,
      &pcbgroup->ipg_hashmask);
  INP_GROUP_LOCK_INIT(pcbgroup, "pcbgroup");
  pcbgroup->ipg_cpu = (pgn % mp_ncpus);

 }
}
