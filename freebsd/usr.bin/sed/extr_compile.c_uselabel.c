
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct labhash {TYPE_1__* lh_cmd; int lh_ref; struct labhash* lh_next; } ;
struct TYPE_2__ {int t; } ;


 int LHSZ ;
 int fname ;
 int free (struct labhash*) ;
 struct labhash** labels ;
 int linenum ;
 int warnx (char*,int ,int ,int ) ;

__attribute__((used)) static void
uselabel(void)
{
 struct labhash *lh, *next;
 int i;

 for (i = 0; i < LHSZ; i++) {
  for (lh = labels[i]; lh != ((void*)0); lh = next) {
   next = lh->lh_next;
   if (!lh->lh_ref)
    warnx("%lu: %s: unused label '%s'",
        linenum, fname, lh->lh_cmd->t);
   free(lh);
  }
 }
}
