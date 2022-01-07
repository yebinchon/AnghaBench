
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcifront_device {int ref_cnt; } ;



__attribute__((used)) static void
get_pdev(struct pcifront_device *pdev)
{
 pdev->ref_cnt++;
}
