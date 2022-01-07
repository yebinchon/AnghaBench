
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_long ;
struct TYPE_9__ {unsigned int filenum; size_t fieldno; } ;
struct TYPE_8__ {size_t joinf; scalar_t__ number; } ;
struct TYPE_7__ {size_t fieldcnt; } ;
typedef TYPE_1__ LINE ;
typedef TYPE_2__ INPUT ;


 int err (int,char*) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ needsep ;
 TYPE_6__* olist ;
 size_t olistcnt ;
 int outfield (TYPE_1__*,size_t,int) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void
outoneline(INPUT *F, LINE *lp)
{
 u_long cnt;






 if (olist)
  for (cnt = 0; cnt < olistcnt; ++cnt) {
   if (olist[cnt].filenum == (unsigned)F->number)
    outfield(lp, olist[cnt].fieldno, 0);
   else if (olist[cnt].filenum == 0)
    outfield(lp, F->joinf, 0);
   else
    outfield(lp, 0, 1);
  }
 else {



  outfield(lp, F->joinf, 0);
  for (cnt = 0; cnt < lp->fieldcnt; ++cnt)
   if (F->joinf != cnt)
    outfield(lp, cnt, 0);
 }
 (void)printf("\n");
 if (ferror(stdout))
  err(1, "stdout");
 needsep = 0;
}
