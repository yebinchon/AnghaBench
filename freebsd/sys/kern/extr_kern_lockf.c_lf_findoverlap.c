
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry {scalar_t__ lf_start; scalar_t__ lf_end; scalar_t__ lf_owner; } ;
typedef scalar_t__ off_t ;


 struct lockf_entry* LIST_NEXT (struct lockf_entry*,int ) ;
 struct lockf_entry* NOLOCKF ;
 int OTHERS ;
 int SELF ;
 int lf_link ;
 int lf_print (char*,struct lockf_entry*) ;
 int lockf_debug ;
 int panic (char*) ;
 int printf (char*) ;

__attribute__((used)) static int
lf_findoverlap(struct lockf_entry **overlap, struct lockf_entry *lock, int type)
{
 struct lockf_entry *lf;
 off_t start, end;
 int res;

 if ((*overlap) == NOLOCKF) {
  return (0);
 }




 start = lock->lf_start;
 end = lock->lf_end;
 res = 0;
 while (*overlap) {
  lf = *overlap;
  if (lf->lf_start > end)
   break;
  if (((type & SELF) && lf->lf_owner != lock->lf_owner) ||
      ((type & OTHERS) && lf->lf_owner == lock->lf_owner)) {
   *overlap = LIST_NEXT(lf, lf_link);
   continue;
  }
  if (start > lf->lf_end) {





   *overlap = LIST_NEXT(lf, lf_link);
   continue;
  }
  if (lf->lf_start == start && lf->lf_end == end) {





   res = 1;
   break;
  }
  if (lf->lf_start <= start && lf->lf_end >= end) {





   res = 2;
   break;
  }
  if (start <= lf->lf_start && end >= lf->lf_end) {





   res = 3;
   break;
  }
  if (lf->lf_start < start && lf->lf_end >= start) {





   res = 4;
   break;
  }
  if (lf->lf_start > start && lf->lf_end > end) {





   res = 5;
   break;
  }
  panic("lf_findoverlap: default");
 }
 return (res);
}
