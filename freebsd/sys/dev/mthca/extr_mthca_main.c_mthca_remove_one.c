
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int __mthca_remove_one (struct pci_dev*) ;
 int mthca_device_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mthca_remove_one(struct pci_dev *pdev)
{
 mutex_lock(&mthca_device_mutex);
 __mthca_remove_one(pdev);
 mutex_unlock(&mthca_device_mutex);
}
