
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsec {int dummy; } ;
struct mprintc {scalar_t__ doctx; } ;


 scalar_t__ mcount ;
 scalar_t__ mflag ;
 int procmatch_match (struct mprintc*,struct parsec*) ;
 int procmatch_nomatch (struct mprintc*,struct parsec*) ;

__attribute__((used)) static bool
procmatches(struct mprintc *mc, struct parsec *pc, bool matched)
{






 if (matched) {
  procmatch_match(mc, pc);


  if (mflag) {

   mcount -= 1;
   if (mcount <= 0)
    return (0);
  }
 } else if (mc->doctx)
  procmatch_nomatch(mc, pc);

 return (1);
}
