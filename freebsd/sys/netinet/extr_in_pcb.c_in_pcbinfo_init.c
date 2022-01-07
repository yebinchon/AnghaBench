
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_init ;
typedef int u_int ;
struct inpcbinfo {int ipi_zone; int ipi_lbgrouphashmask; void* ipi_lbgrouphashbase; int ipi_porthashmask; void* ipi_porthashbase; int ipi_hashmask; void* ipi_hashbase; scalar_t__ ipi_count; struct inpcbhead* ipi_listhead; int ipi_vnet; } ;
struct inpcbhead {int dummy; } ;
struct inpcb {int dummy; } ;


 int CK_LIST_INIT (struct inpcbhead*) ;
 int INP_HASH_LOCK_INIT (struct inpcbinfo*,char*) ;
 int INP_INFO_LOCK_INIT (struct inpcbinfo*,char const*) ;
 int INP_LIST_LOCK_INIT (struct inpcbinfo*,char*) ;
 scalar_t__ IPPORT_MAX ;
 int M_PCB ;
 int UMA_ALIGN_PTR ;
 int curvnet ;
 void* hashinit (int,int ,int *) ;
 int imin (int,scalar_t__) ;
 int in_pcbgroup_init (struct inpcbinfo*,int ,int) ;
 int inpcb_fini ;
 int maxsockets ;
 int uma_zcreate (char*,int,int *,int *,int ,int ,int ,int ) ;
 int uma_zone_set_max (int ,int ) ;
 int uma_zone_set_warning (int ,char*) ;

void
in_pcbinfo_init(struct inpcbinfo *pcbinfo, const char *name,
    struct inpcbhead *listhead, int hash_nelements, int porthash_nelements,
    char *inpcbzone_name, uma_init inpcbzone_init, u_int hashfields)
{

 porthash_nelements = imin(porthash_nelements, IPPORT_MAX + 1);

 INP_INFO_LOCK_INIT(pcbinfo, name);
 INP_HASH_LOCK_INIT(pcbinfo, "pcbinfohash");
 INP_LIST_LOCK_INIT(pcbinfo, "pcbinfolist");



 pcbinfo->ipi_listhead = listhead;
 CK_LIST_INIT(pcbinfo->ipi_listhead);
 pcbinfo->ipi_count = 0;
 pcbinfo->ipi_hashbase = hashinit(hash_nelements, M_PCB,
     &pcbinfo->ipi_hashmask);
 pcbinfo->ipi_porthashbase = hashinit(porthash_nelements, M_PCB,
     &pcbinfo->ipi_porthashmask);
 pcbinfo->ipi_lbgrouphashbase = hashinit(porthash_nelements, M_PCB,
     &pcbinfo->ipi_lbgrouphashmask);



 pcbinfo->ipi_zone = uma_zcreate(inpcbzone_name, sizeof(struct inpcb),
     ((void*)0), ((void*)0), inpcbzone_init, inpcb_fini, UMA_ALIGN_PTR, 0);
 uma_zone_set_max(pcbinfo->ipi_zone, maxsockets);
 uma_zone_set_warning(pcbinfo->ipi_zone,
     "kern.ipc.maxsockets limit reached");
}
