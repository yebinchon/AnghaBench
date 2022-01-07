
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_event_file {int ref; scalar_t__ is_async; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_2__ {struct ib_uverbs_event_file* private_data; int * f_op; } ;


 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int kref_get (int *) ;
 int uverbs_event_fops ;

struct ib_uverbs_event_file *ib_uverbs_lookup_comp_file(int fd)
{
 struct ib_uverbs_event_file *ev_file = ((void*)0);
 struct fd f = fdget(fd);

 if (!f.file)
  return ((void*)0);

 if (f.file->f_op != &uverbs_event_fops)
  goto out;

 ev_file = f.file->private_data;
 if (ev_file->is_async) {
  ev_file = ((void*)0);
  goto out;
 }

 kref_get(&ev_file->ref);

out:
 fdput(f);
 return ev_file;
}
