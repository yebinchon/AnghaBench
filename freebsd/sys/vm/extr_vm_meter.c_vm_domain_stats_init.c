
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_domain {char* vmd_name; int vmd_free_severe; int vmd_free_min; int vmd_free_reserved; int vmd_free_target; int vmd_inactive_target; TYPE_1__* vmd_pagequeues; int vmd_free_count; struct sysctl_oid* vmd_oid; } ;
struct sysctl_oid {int dummy; } ;
struct TYPE_2__ {int pq_pdpages; int pq_cnt; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 size_t PQ_ACTIVE ;
 size_t PQ_INACTIVE ;
 size_t PQ_LAUNDRY ;
 size_t PQ_UNSWAPPABLE ;
 void* SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_U64 (int *,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_UINT (int *,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;

__attribute__((used)) static void
vm_domain_stats_init(struct vm_domain *vmd, struct sysctl_oid *parent)
{
 struct sysctl_oid *oid;

 vmd->vmd_oid = SYSCTL_ADD_NODE(((void*)0), SYSCTL_CHILDREN(parent), OID_AUTO,
     vmd->vmd_name, CTLFLAG_RD, ((void*)0), "");
 oid = SYSCTL_ADD_NODE(((void*)0), SYSCTL_CHILDREN(vmd->vmd_oid), OID_AUTO,
     "stats", CTLFLAG_RD, ((void*)0), "");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "free_count", CTLFLAG_RD, &vmd->vmd_free_count, 0,
     "Free pages");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "active", CTLFLAG_RD, &vmd->vmd_pagequeues[PQ_ACTIVE].pq_cnt, 0,
     "Active pages");
 SYSCTL_ADD_U64(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "actpdpgs", CTLFLAG_RD,
     &vmd->vmd_pagequeues[PQ_ACTIVE].pq_pdpages, 0,
     "Active pages scanned by the page daemon");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "inactive", CTLFLAG_RD, &vmd->vmd_pagequeues[PQ_INACTIVE].pq_cnt, 0,
     "Inactive pages");
 SYSCTL_ADD_U64(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "inactpdpgs", CTLFLAG_RD,
     &vmd->vmd_pagequeues[PQ_INACTIVE].pq_pdpages, 0,
     "Inactive pages scanned by the page daemon");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "laundry", CTLFLAG_RD, &vmd->vmd_pagequeues[PQ_LAUNDRY].pq_cnt, 0,
     "laundry pages");
 SYSCTL_ADD_U64(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "laundpdpgs", CTLFLAG_RD,
     &vmd->vmd_pagequeues[PQ_LAUNDRY].pq_pdpages, 0,
     "Laundry pages scanned by the page daemon");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO, "unswappable",
     CTLFLAG_RD, &vmd->vmd_pagequeues[PQ_UNSWAPPABLE].pq_cnt, 0,
     "Unswappable pages");
 SYSCTL_ADD_U64(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "unswppdpgs", CTLFLAG_RD,
     &vmd->vmd_pagequeues[PQ_UNSWAPPABLE].pq_pdpages, 0,
     "Unswappable pages scanned by the page daemon");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "inactive_target", CTLFLAG_RD, &vmd->vmd_inactive_target, 0,
     "Target inactive pages");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "free_target", CTLFLAG_RD, &vmd->vmd_free_target, 0,
     "Target free pages");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "free_reserved", CTLFLAG_RD, &vmd->vmd_free_reserved, 0,
     "Reserved free pages");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "free_min", CTLFLAG_RD, &vmd->vmd_free_min, 0,
     "Minimum free pages");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(oid), OID_AUTO,
     "free_severe", CTLFLAG_RD, &vmd->vmd_free_severe, 0,
     "Severe free pages");

}
