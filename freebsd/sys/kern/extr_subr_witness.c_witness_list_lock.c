
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lock_object {TYPE_1__* lo_witness; int lo_name; } ;
struct lock_instance {int li_flags; int li_line; int li_file; struct lock_object* li_lock; } ;
struct TYPE_4__ {int lc_name; } ;
struct TYPE_3__ {int w_name; } ;


 int LI_EXCLUSIVE ;
 int LI_RECURSEMASK ;
 TYPE_2__* LOCK_CLASS (struct lock_object*) ;
 int fixup_filename (int ) ;

__attribute__((used)) static void
witness_list_lock(struct lock_instance *instance,
    int (*prnt)(const char *fmt, ...))
{
 struct lock_object *lock;

 lock = instance->li_lock;
 prnt("%s %s %s", (instance->li_flags & LI_EXCLUSIVE) != 0 ?
     "exclusive" : "shared", LOCK_CLASS(lock)->lc_name, lock->lo_name);
 if (lock->lo_witness->w_name != lock->lo_name)
  prnt(" (%s)", lock->lo_witness->w_name);
 prnt(" r = %d (%p) locked @ %s:%d\n",
     instance->li_flags & LI_RECURSEMASK, lock,
     fixup_filename(instance->li_file), instance->li_line);
}
