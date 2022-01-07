
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int si_children; int si_flags; struct cdev* si_parent; } ;


 int LIST_INSERT_HEAD (int *,struct cdev*,int ) ;
 int SI_CHILD ;
 int si_siblings ;

__attribute__((used)) static void
dev_dependsl(struct cdev *pdev, struct cdev *cdev)
{

 cdev->si_parent = pdev;
 cdev->si_flags |= SI_CHILD;
 LIST_INSERT_HEAD(&pdev->si_children, cdev, si_siblings);
}
