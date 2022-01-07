
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pfn; } ;
struct TYPE_7__ {TYPE_1__* eq; } ;
struct mthca_dev {int mthca_flags; TYPE_4__ driver_uar; int kar; int driver_pd; TYPE_3__* pdev; TYPE_2__ eq_table; int doorbell_lock; } ;
typedef int phys_addr_t ;
struct TYPE_8__ {int irq; } ;
struct TYPE_6__ {int msi_x_vector; } ;


 int ENOMEM ;
 size_t MTHCA_EQ_CMD ;
 int MTHCA_FLAG_MSI_X ;
 int MTHCA_INIT_DOORBELL_LOCK (int *) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int ioremap (int,int ) ;
 int iounmap (int ) ;
 int mthca_NOP (struct mthca_dev*) ;
 int mthca_cleanup_av_table (struct mthca_dev*) ;
 int mthca_cleanup_cq_table (struct mthca_dev*) ;
 int mthca_cleanup_eq_table (struct mthca_dev*) ;
 int mthca_cleanup_mr_table (struct mthca_dev*) ;
 int mthca_cleanup_pd_table (struct mthca_dev*) ;
 int mthca_cleanup_qp_table (struct mthca_dev*) ;
 int mthca_cleanup_srq_table (struct mthca_dev*) ;
 int mthca_cleanup_uar_table (struct mthca_dev*) ;
 int mthca_cmd_use_events (struct mthca_dev*) ;
 int mthca_cmd_use_polling (struct mthca_dev*) ;
 int mthca_dbg (struct mthca_dev*,char*) ;
 int mthca_err (struct mthca_dev*,char*,...) ;
 int mthca_init_av_table (struct mthca_dev*) ;
 int mthca_init_cq_table (struct mthca_dev*) ;
 int mthca_init_eq_table (struct mthca_dev*) ;
 int mthca_init_mcg_table (struct mthca_dev*) ;
 int mthca_init_mr_table (struct mthca_dev*) ;
 int mthca_init_pd_table (struct mthca_dev*) ;
 int mthca_init_qp_table (struct mthca_dev*) ;
 int mthca_init_srq_table (struct mthca_dev*) ;
 int mthca_init_uar_table (struct mthca_dev*) ;
 int mthca_pd_alloc (struct mthca_dev*,int,int *) ;
 int mthca_pd_free (struct mthca_dev*,int *) ;
 int mthca_uar_alloc (struct mthca_dev*,TYPE_4__*) ;
 int mthca_uar_free (struct mthca_dev*,TYPE_4__*) ;
 int mthca_warn (struct mthca_dev*,char*,...) ;

__attribute__((used)) static int mthca_setup_hca(struct mthca_dev *dev)
{
 int err;

 MTHCA_INIT_DOORBELL_LOCK(&dev->doorbell_lock);

 err = mthca_init_uar_table(dev);
 if (err) {
  mthca_err(dev, "Failed to initialize "
     "user access region table, aborting.\n");
  return err;
 }

 err = mthca_uar_alloc(dev, &dev->driver_uar);
 if (err) {
  mthca_err(dev, "Failed to allocate driver access region, "
     "aborting.\n");
  goto err_uar_table_free;
 }

 dev->kar = ioremap((phys_addr_t) dev->driver_uar.pfn << PAGE_SHIFT, PAGE_SIZE);
 if (!dev->kar) {
  mthca_err(dev, "Couldn't map kernel access region, "
     "aborting.\n");
  err = -ENOMEM;
  goto err_uar_free;
 }

 err = mthca_init_pd_table(dev);
 if (err) {
  mthca_err(dev, "Failed to initialize "
     "protection domain table, aborting.\n");
  goto err_kar_unmap;
 }

 err = mthca_init_mr_table(dev);
 if (err) {
  mthca_err(dev, "Failed to initialize "
     "memory region table, aborting.\n");
  goto err_pd_table_free;
 }

 err = mthca_pd_alloc(dev, 1, &dev->driver_pd);
 if (err) {
  mthca_err(dev, "Failed to create driver PD, "
     "aborting.\n");
  goto err_mr_table_free;
 }

 err = mthca_init_eq_table(dev);
 if (err) {
  mthca_err(dev, "Failed to initialize "
     "event queue table, aborting.\n");
  goto err_pd_free;
 }

 err = mthca_cmd_use_events(dev);
 if (err) {
  mthca_err(dev, "Failed to switch to event-driven "
     "firmware commands, aborting.\n");
  goto err_eq_table_free;
 }

 err = mthca_NOP(dev);
 if (err) {
  if (dev->mthca_flags & MTHCA_FLAG_MSI_X) {
   mthca_warn(dev, "NOP command failed to generate interrupt "
       "(IRQ %d).\n",
       dev->eq_table.eq[MTHCA_EQ_CMD].msi_x_vector);
   mthca_warn(dev, "Trying again with MSI-X disabled.\n");
  } else {
   mthca_err(dev, "NOP command failed to generate interrupt "
      "(IRQ %d), aborting.\n",
      dev->pdev->irq);
   mthca_err(dev, "BIOS or ACPI interrupt routing problem?\n");
  }

  goto err_cmd_poll;
 }

 mthca_dbg(dev, "NOP command IRQ test passed\n");

 err = mthca_init_cq_table(dev);
 if (err) {
  mthca_err(dev, "Failed to initialize "
     "completion queue table, aborting.\n");
  goto err_cmd_poll;
 }

 err = mthca_init_srq_table(dev);
 if (err) {
  mthca_err(dev, "Failed to initialize "
     "shared receive queue table, aborting.\n");
  goto err_cq_table_free;
 }

 err = mthca_init_qp_table(dev);
 if (err) {
  mthca_err(dev, "Failed to initialize "
     "queue pair table, aborting.\n");
  goto err_srq_table_free;
 }

 err = mthca_init_av_table(dev);
 if (err) {
  mthca_err(dev, "Failed to initialize "
     "address vector table, aborting.\n");
  goto err_qp_table_free;
 }

 err = mthca_init_mcg_table(dev);
 if (err) {
  mthca_err(dev, "Failed to initialize "
     "multicast group table, aborting.\n");
  goto err_av_table_free;
 }

 return 0;

err_av_table_free:
 mthca_cleanup_av_table(dev);

err_qp_table_free:
 mthca_cleanup_qp_table(dev);

err_srq_table_free:
 mthca_cleanup_srq_table(dev);

err_cq_table_free:
 mthca_cleanup_cq_table(dev);

err_cmd_poll:
 mthca_cmd_use_polling(dev);

err_eq_table_free:
 mthca_cleanup_eq_table(dev);

err_pd_free:
 mthca_pd_free(dev, &dev->driver_pd);

err_mr_table_free:
 mthca_cleanup_mr_table(dev);

err_pd_table_free:
 mthca_cleanup_pd_table(dev);

err_kar_unmap:
 iounmap(dev->kar);

err_uar_free:
 mthca_uar_free(dev, &dev->driver_uar);

err_uar_table_free:
 mthca_cleanup_uar_table(dev);
 return err;
}
