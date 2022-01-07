
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct mthca_create_cq {int set_db_index; int arm_db_index; int pdn; int lkey; int arm_db_page; int set_db_page; } ;
struct ib_cq {int dummy; } ;
struct TYPE_14__ {int lkey; } ;
struct TYPE_15__ {TYPE_2__ ibmr; } ;
struct TYPE_16__ {TYPE_3__ mr; } ;
struct mthca_cq {struct ib_cq ibcq; int * resize_buf; int cqn; int arm_db_index; int set_ci_db_index; TYPE_4__ buf; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cq_init_attr {int cqe; scalar_t__ flags; } ;
typedef int __u32 ;
struct TYPE_17__ {int pd_num; } ;
struct TYPE_13__ {int max_cqes; } ;
struct TYPE_19__ {TYPE_5__ driver_pd; TYPE_1__ limits; } ;
struct TYPE_18__ {int db_tab; int uar; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 struct ib_cq* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ ib_copy_from_udata (struct mthca_create_cq*,struct ib_udata*,int) ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,int *,int) ;
 int kfree (struct mthca_cq*) ;
 struct mthca_cq* kmalloc (int,int ) ;
 int mthca_free_cq (TYPE_7__*,struct mthca_cq*) ;
 int mthca_init_cq (TYPE_7__*,int,TYPE_6__*,int ,struct mthca_cq*) ;
 int mthca_map_user_db (TYPE_7__*,int *,int ,int ,int ) ;
 int mthca_unmap_user_db (TYPE_7__*,int *,int ,int ) ;
 TYPE_7__* to_mdev (struct ib_device*) ;
 TYPE_6__* to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static struct ib_cq *mthca_create_cq(struct ib_device *ibdev,
         const struct ib_cq_init_attr *attr,
         struct ib_ucontext *context,
         struct ib_udata *udata)
{
 int entries = attr->cqe;
 struct mthca_create_cq ucmd;
 struct mthca_cq *cq;
 int nent;
 int err;

 if (attr->flags)
  return ERR_PTR(-EINVAL);

 if (entries < 1 || entries > to_mdev(ibdev)->limits.max_cqes)
  return ERR_PTR(-EINVAL);

 if (context) {
  if (ib_copy_from_udata(&ucmd, udata, sizeof ucmd))
   return ERR_PTR(-EFAULT);

  err = mthca_map_user_db(to_mdev(ibdev), &to_mucontext(context)->uar,
     to_mucontext(context)->db_tab,
     ucmd.set_db_index, ucmd.set_db_page);
  if (err)
   return ERR_PTR(err);

  err = mthca_map_user_db(to_mdev(ibdev), &to_mucontext(context)->uar,
     to_mucontext(context)->db_tab,
     ucmd.arm_db_index, ucmd.arm_db_page);
  if (err)
   goto err_unmap_set;
 }

 cq = kmalloc(sizeof *cq, GFP_KERNEL);
 if (!cq) {
  err = -ENOMEM;
  goto err_unmap_arm;
 }

 if (context) {
  cq->buf.mr.ibmr.lkey = ucmd.lkey;
  cq->set_ci_db_index = ucmd.set_db_index;
  cq->arm_db_index = ucmd.arm_db_index;
 }

 for (nent = 1; nent <= entries; nent <<= 1)
  ;

 err = mthca_init_cq(to_mdev(ibdev), nent,
       context ? to_mucontext(context) : ((void*)0),
       context ? ucmd.pdn : to_mdev(ibdev)->driver_pd.pd_num,
       cq);
 if (err)
  goto err_free;

 if (context && ib_copy_to_udata(udata, &cq->cqn, sizeof (__u32))) {
  mthca_free_cq(to_mdev(ibdev), cq);
  err = -EFAULT;
  goto err_free;
 }

 cq->resize_buf = ((void*)0);

 return &cq->ibcq;

err_free:
 kfree(cq);

err_unmap_arm:
 if (context)
  mthca_unmap_user_db(to_mdev(ibdev), &to_mucontext(context)->uar,
        to_mucontext(context)->db_tab, ucmd.arm_db_index);

err_unmap_set:
 if (context)
  mthca_unmap_user_db(to_mdev(ibdev), &to_mucontext(context)->uar,
        to_mucontext(context)->db_tab, ucmd.set_db_index);

 return ERR_PTR(err);
}
