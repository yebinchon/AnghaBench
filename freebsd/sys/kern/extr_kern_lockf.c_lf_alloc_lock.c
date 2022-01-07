
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lockf_entry {struct lock_owner* lf_owner; } ;
struct lock_owner {size_t lo_hash; int lo_refs; } ;
struct TYPE_2__ {int lock; } ;


 int M_LOCKF ;
 int M_WAITOK ;
 int M_ZERO ;
 TYPE_1__* lf_lock_owners ;
 int lockf_debug ;
 struct lockf_entry* malloc (int,int ,int) ;
 int printf (char*,struct lockf_entry*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static struct lockf_entry *
lf_alloc_lock(struct lock_owner *lo)
{
 struct lockf_entry *lf;

 lf = malloc(sizeof(struct lockf_entry), M_LOCKF, M_WAITOK|M_ZERO);





 if (lo) {
  sx_xlock(&lf_lock_owners[lo->lo_hash].lock);
  lo->lo_refs++;
  sx_xunlock(&lf_lock_owners[lo->lo_hash].lock);
  lf->lf_owner = lo;
 }

 return (lf);
}
