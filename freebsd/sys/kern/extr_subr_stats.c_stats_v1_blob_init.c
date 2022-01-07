
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct statsblobv1 {int dummy; } ;


 int EINVAL ;
 int TPL_LIST_RLOCK () ;
 int TPL_LIST_RUNLOCK () ;
 scalar_t__ ntpl ;
 int stats_v1_blob_init_locked (struct statsblobv1*,scalar_t__,scalar_t__) ;

int
stats_v1_blob_init(struct statsblobv1 *sb, uint32_t tpl_id, uint32_t flags)
{
 int error;

 error = 0;

 TPL_LIST_RLOCK();
 if (sb == ((void*)0) || tpl_id >= ntpl) {
  error = EINVAL;
 } else {
  error = stats_v1_blob_init_locked(sb, tpl_id, flags);
 }
 TPL_LIST_RUNLOCK();

 return (error);
}
