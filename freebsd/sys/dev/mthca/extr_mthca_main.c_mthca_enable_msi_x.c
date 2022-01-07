
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* eq; } ;
struct mthca_dev {TYPE_2__ eq_table; int pdev; } ;
struct msix_entry {int entry; int vector; } ;
struct TYPE_3__ {int msi_x_vector; } ;


 int ARRAY_SIZE (struct msix_entry*) ;
 size_t MTHCA_EQ_ASYNC ;
 size_t MTHCA_EQ_CMD ;
 size_t MTHCA_EQ_COMP ;
 int pci_enable_msix_range (int ,struct msix_entry*,int ,int ) ;

__attribute__((used)) static int mthca_enable_msi_x(struct mthca_dev *mdev)
{
 struct msix_entry entries[3];
 int err;

 entries[0].entry = 0;
 entries[1].entry = 1;
 entries[2].entry = 2;

 err = pci_enable_msix_range(mdev->pdev, entries, ARRAY_SIZE(entries), ARRAY_SIZE(entries));
 if (err < 0)
  return err;

 mdev->eq_table.eq[MTHCA_EQ_COMP ].msi_x_vector = entries[0].vector;
 mdev->eq_table.eq[MTHCA_EQ_ASYNC].msi_x_vector = entries[1].vector;
 mdev->eq_table.eq[MTHCA_EQ_CMD ].msi_x_vector = entries[2].vector;

 return 0;
}
