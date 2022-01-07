
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_domain {int vmd_interrupt_free_min; int vmd_page_count; int vmd_free_min; int vmd_pageout_free_min; int vmd_free_reserved; int vmd_free_severe; int vmd_free_target; int vmd_inactive_target; int vmd_free_count; int vmd_pageout_wakeup_thresh; int vmd_background_launder_target; int vmd_pid; struct sysctl_oid* vmd_oid; } ;
struct sysctl_oid {int dummy; } ;


 int CTLFLAG_RD ;
 int MAXBSIZE ;
 int OID_AUTO ;
 int PAGE_SIZE ;
 int PIDCTRL_BOUND ;
 int PIDCTRL_KDD ;
 int PIDCTRL_KID ;
 int PIDCTRL_KPD ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct vm_domain* VM_DOMAIN (int) ;
 int VM_INACT_SCAN_RATE ;
 int hz ;
 int pidctrl_init (int *,int,int,int ,int ,int ,int ) ;
 int pidctrl_init_sysctl (int *,int ) ;
 int vm_pageout_page_count ;

__attribute__((used)) static void
vm_pageout_init_domain(int domain)
{
 struct vm_domain *vmd;
 struct sysctl_oid *oid;

 vmd = VM_DOMAIN(domain);
 vmd->vmd_interrupt_free_min = 2;






 if (vmd->vmd_page_count > 1024)
  vmd->vmd_free_min = 4 + (vmd->vmd_page_count - 1024) / 200;
 else
  vmd->vmd_free_min = 4;
 vmd->vmd_pageout_free_min = 2 * MAXBSIZE / PAGE_SIZE +
     vmd->vmd_interrupt_free_min;
 vmd->vmd_free_reserved = vm_pageout_page_count +
     vmd->vmd_pageout_free_min + (vmd->vmd_page_count / 768);
 vmd->vmd_free_severe = vmd->vmd_free_min / 2;
 vmd->vmd_free_target = 4 * vmd->vmd_free_min + vmd->vmd_free_reserved;
 vmd->vmd_free_min += vmd->vmd_free_reserved;
 vmd->vmd_free_severe += vmd->vmd_free_reserved;
 vmd->vmd_inactive_target = (3 * vmd->vmd_free_target) / 2;
 if (vmd->vmd_inactive_target > vmd->vmd_free_count / 3)
  vmd->vmd_inactive_target = vmd->vmd_free_count / 3;





 vmd->vmd_pageout_wakeup_thresh = (vmd->vmd_free_target / 10) * 9;






 vmd->vmd_background_launder_target = (vmd->vmd_free_target -
     vmd->vmd_free_min) / 10;


 pidctrl_init(&vmd->vmd_pid, hz / VM_INACT_SCAN_RATE,
     vmd->vmd_free_target, PIDCTRL_BOUND,
     PIDCTRL_KPD, PIDCTRL_KID, PIDCTRL_KDD);
 oid = SYSCTL_ADD_NODE(((void*)0), SYSCTL_CHILDREN(vmd->vmd_oid), OID_AUTO,
     "pidctrl", CTLFLAG_RD, ((void*)0), "");
 pidctrl_init_sysctl(&vmd->vmd_pid, SYSCTL_CHILDREN(oid));
}
