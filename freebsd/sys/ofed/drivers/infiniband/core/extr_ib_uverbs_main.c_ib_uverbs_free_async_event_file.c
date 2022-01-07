
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_file {TYPE_1__* async_file; } ;
struct TYPE_2__ {int ref; } ;


 int ib_uverbs_release_event_file ;
 int kref_put (int *,int ) ;

void ib_uverbs_free_async_event_file(struct ib_uverbs_file *file)
{
 kref_put(&file->async_file->ref, ib_uverbs_release_event_file);
 file->async_file = ((void*)0);
}
