
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct update_callback_data {int flags; } ;
struct diff_filepair {scalar_t__ status; TYPE_1__* two; } ;
struct TYPE_2__ {int mode; } ;


 int ADD_CACHE_IGNORE_REMOVAL ;
 int DIFF_STATUS_DELETED ;
 int DIFF_STATUS_MODIFIED ;
 scalar_t__ DIFF_STATUS_UNMERGED ;

__attribute__((used)) static int fix_unmerged_status(struct diff_filepair *p,
          struct update_callback_data *data)
{
 if (p->status != DIFF_STATUS_UNMERGED)
  return p->status;
 if (!(data->flags & ADD_CACHE_IGNORE_REMOVAL) && !p->two->mode)




  return DIFF_STATUS_DELETED;
 else






  return DIFF_STATUS_MODIFIED;
}
