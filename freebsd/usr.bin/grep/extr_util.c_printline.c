
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t boff; size_t dat; size_t len; } ;
struct parsec {size_t matchidx; scalar_t__ printed; TYPE_2__ ln; TYPE_1__* matches; } ;
struct TYPE_4__ {size_t rm_so; size_t rm_eo; } ;
typedef TYPE_1__ regmatch_t ;


 char* color ;
 int fprintf (int ,char*,...) ;
 int fwrite (size_t,size_t,int,int ) ;
 int grep_printline (TYPE_2__*,int) ;
 scalar_t__ matchall ;
 scalar_t__ oflag ;
 int printline_metadata (TYPE_2__*,int) ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void
printline(struct parsec *pc, int sep)
{
 size_t a = 0;
 size_t i, matchidx;
 regmatch_t match;


 if (oflag && matchall)
  return;

 matchidx = pc->matchidx;


 if ((oflag || color) && matchidx > 0) {

  if (!oflag && pc->printed == 0)
   printline_metadata(&pc->ln, sep);
  for (i = 0; i < matchidx; i++) {
   match = pc->matches[i];

   if (match.rm_so == match.rm_eo)
    continue;




   if (oflag) {
    pc->ln.boff = match.rm_so;
    printline_metadata(&pc->ln, sep);
   } else
    fwrite(pc->ln.dat + a, match.rm_so - a, 1,
        stdout);
   if (color)
    fprintf(stdout, "\33[%sm\33[K", color);
   fwrite(pc->ln.dat + match.rm_so,
       match.rm_eo - match.rm_so, 1, stdout);
   if (color)
    fprintf(stdout, "\33[m\33[K");
   a = match.rm_eo;
   if (oflag)
    putchar('\n');
  }
  if (!oflag) {
   if (pc->ln.len - a > 0)
    fwrite(pc->ln.dat + a, pc->ln.len - a, 1,
        stdout);
   putchar('\n');
  }
 } else
  grep_printline(&pc->ln, sep);
 pc->printed++;
}
