
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uverbs_file {int mutex; int ucontext; } ;
struct ib_uverbs_destroy_flow {int flow_handle; scalar_t__ comp_mask; } ;
struct ib_uobject {int list; scalar_t__ live; struct ib_flow* object; } ;
struct ib_udata {int inlen; } ;
struct ib_flow {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int cmd ;


 int EINVAL ;
 int ib_copy_from_udata (struct ib_uverbs_destroy_flow*,struct ib_udata*,int) ;
 int ib_destroy_flow (struct ib_flow*) ;
 int ib_uverbs_rule_idr ;
 int idr_remove_uobj (int *,struct ib_uobject*) ;
 struct ib_uobject* idr_write_uobj (int *,int ,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_uobj (struct ib_uobject*) ;
 int put_uobj_write (struct ib_uobject*) ;

int ib_uverbs_ex_destroy_flow(struct ib_uverbs_file *file,
         struct ib_device *ib_dev,
         struct ib_udata *ucore,
         struct ib_udata *uhw)
{
 struct ib_uverbs_destroy_flow cmd;
 struct ib_flow *flow_id;
 struct ib_uobject *uobj;
 int ret;

 if (ucore->inlen < sizeof(cmd))
  return -EINVAL;

 ret = ib_copy_from_udata(&cmd, ucore, sizeof(cmd));
 if (ret)
  return ret;

 if (cmd.comp_mask)
  return -EINVAL;

 uobj = idr_write_uobj(&ib_uverbs_rule_idr, cmd.flow_handle,
         file->ucontext);
 if (!uobj)
  return -EINVAL;
 flow_id = uobj->object;

 ret = ib_destroy_flow(flow_id);
 if (!ret)
  uobj->live = 0;

 put_uobj_write(uobj);

 idr_remove_uobj(&ib_uverbs_rule_idr, uobj);

 mutex_lock(&file->mutex);
 list_del(&uobj->list);
 mutex_unlock(&file->mutex);

 put_uobj(uobj);

 return ret;
}
