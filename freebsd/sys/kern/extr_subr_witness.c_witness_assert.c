
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lock_object {int lo_name; int * lo_witness; } ;
struct lock_instance {int li_flags; } ;
struct lock_class {int lc_flags; int lc_name; } ;
struct TYPE_2__ {int td_sleeplocks; } ;



 int const LA_NOTRECURSED ;
 int const LA_RECURSED ;



 int LC_SLEEPLOCK ;
 int LC_SPINLOCK ;
 int LI_EXCLUSIVE ;
 int LI_RECURSEMASK ;
 struct lock_class* LOCK_CLASS (struct lock_object const*) ;
 int PCPU_GET (int ) ;
 TYPE_1__* curthread ;
 struct lock_instance* find_instance (int ,struct lock_object const*) ;
 int fixup_filename (char const*) ;
 int kassert_panic (char*,int ,int,...) ;
 int * panicstr ;
 int spinlocks ;
 int witness_watch ;

void
witness_assert(const struct lock_object *lock, int flags, const char *file,
    int line)
{
}
