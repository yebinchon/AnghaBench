
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double FSECSPERDAY ;
 double SECSPERDAY ;
 scalar_t__ floor (double) ;
 double potm (double) ;

__attribute__((used)) static double
potm_minute(double onday, int olddir) {
 double period = FSECSPERDAY / 2.0;
 double p1, p2;
 double before, after;
 int newdir;



 p1 = onday + (period / SECSPERDAY);
 period /= 2;

 while (period > 30) {

  p2 = p1 + (2.0 / SECSPERDAY);
  before = potm(p1);
  after = potm(p2);

  newdir = before < after ? -1 : +1;
  if (olddir != newdir)
   p1 += (period / SECSPERDAY);
  else
   p1 -= (period / SECSPERDAY);
  period /= 2;


 }
 p1 -= floor(p1);

 return (p1);
}
