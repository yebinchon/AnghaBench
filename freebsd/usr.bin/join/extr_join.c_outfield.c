
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* wint_t ;
typedef size_t u_long ;
struct TYPE_3__ {size_t fieldcnt; char** fields; } ;
typedef TYPE_1__ LINE ;


 char* empty ;
 int err (int,char*) ;
 scalar_t__ ferror (int ) ;
 int needsep ;
 int printf (char*,char*) ;
 int stdout ;
 scalar_t__* tabchar ;

__attribute__((used)) static void
outfield(LINE *lp, u_long fieldno, int out_empty)
{
 if (needsep++)
  (void)printf("%lc", (wint_t)*tabchar);
 if (!ferror(stdout)) {
  if (lp->fieldcnt <= fieldno || out_empty) {
   if (empty != ((void*)0))
    (void)printf("%s", empty);
  } else {
   if (*lp->fields[fieldno] == '\0')
    return;
   (void)printf("%s", lp->fields[fieldno]);
  }
 }
 if (ferror(stdout))
  err(1, "stdout");
}
