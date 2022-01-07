
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {scalar_t__ ref_cnt; scalar_t__ evtchn; scalar_t__ gnt_ref; TYPE_1__* xdev; scalar_t__ sh_info; } ;
struct TYPE_2__ {int * data; } ;


 int DPRINTF (char*,struct pcifront_device*,scalar_t__) ;
 scalar_t__ INVALID_EVTCHN ;
 scalar_t__ INVALID_GRANT_REF ;
 int M_DEVBUF ;
 int free (struct pcifront_device*,int ) ;
 int gnttab_end_foreign_access (scalar_t__,int ,void*) ;
 int xenbus_free_evtchn (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
put_pdev(struct pcifront_device *pdev)
{
 if (--pdev->ref_cnt > 0)
  return;

 DPRINTF("freeing pdev @ 0x%p (ref_cnt=%d)\n", pdev, pdev->ref_cnt);

 if (pdev->evtchn != INVALID_EVTCHN)
  xenbus_free_evtchn(pdev->xdev, pdev->evtchn);

 if (pdev->gnt_ref != INVALID_GRANT_REF)
  gnttab_end_foreign_access(pdev->gnt_ref, 0, (void *)pdev->sh_info);

 pdev->xdev->data = ((void*)0);

 free(pdev, M_DEVBUF);
}
