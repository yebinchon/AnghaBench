
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_common {int res_id; int state; } ;
struct res_cq {struct res_common com; int ref_count; } ;


 int GFP_KERNEL ;
 int RES_CQ_ALLOCATED ;
 int atomic_set (int *,int ) ;
 struct res_cq* kzalloc (int,int ) ;

__attribute__((used)) static struct res_common *alloc_cq_tr(int id)
{
 struct res_cq *ret;

 ret = kzalloc(sizeof *ret, GFP_KERNEL);
 if (!ret)
  return ((void*)0);

 ret->com.res_id = id;
 ret->com.state = RES_CQ_ALLOCATED;
 atomic_set(&ret->ref_count, 0);

 return &ret->com;
}
