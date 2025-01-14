
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int from; int to; } ;
struct TYPE_3__ {int from; int to; } ;
struct diff {TYPE_2__ new; TYPE_1__ old; } ;
typedef int FILE ;


 int err (int,char*) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 char* getchange (int *) ;
 int increase () ;
 int number (char**) ;
 int szchanges ;

__attribute__((used)) static int
readin(int fd, struct diff **dd)
{
 int a, b, c, d;
 size_t i;
 char kind, *p;
 FILE *f;

 f = fdopen(fd, "r");
 if (f == ((void*)0))
  err(2, "fdopen");
 for (i=0; (p = getchange(f)); i++) {
  if (i >= szchanges - 1)
   increase();
  a = b = number(&p);
  if (*p == ',') {
   p++;
   b = number(&p);
  }
  kind = *p++;
  c = d = number(&p);
  if (*p==',') {
   p++;
   d = number(&p);
  }
  if (kind == 'a')
   a++;
  if (kind == 'd')
   c++;
  b++;
  d++;
  (*dd)[i].old.from = a;
  (*dd)[i].old.to = b;
  (*dd)[i].new.from = c;
  (*dd)[i].new.to = d;
 }
 if (i) {
  (*dd)[i].old.from = (*dd)[i-1].old.to;
  (*dd)[i].new.from = (*dd)[i-1].new.to;
 }
 fclose(f);
 return (i);
}
