
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {int n; } ;


 double Avg (struct dataset*) ;
 int NSTUDENT ;
 int Var (struct dataset*) ;
 double fabs (double) ;
 int printf (char*,double,...) ;
 double sqrt (double) ;
 double** student ;
 double* studentpct ;

__attribute__((used)) static void
Relative(struct dataset *ds, struct dataset *rs, int confidx)
{
 double spool, s, d, e, t;
 double re;
 int i;

 i = ds->n + rs->n - 2;
 if (i > NSTUDENT)
  t = student[0][confidx];
 else
  t = student[i][confidx];
 spool = (ds->n - 1) * Var(ds) + (rs->n - 1) * Var(rs);
 spool /= ds->n + rs->n - 2;
 spool = sqrt(spool);
 s = spool * sqrt(1.0 / ds->n + 1.0 / rs->n);
 d = Avg(ds) - Avg(rs);
 e = t * s;

 re = (ds->n - 1) * Var(ds) + (rs->n - 1) * Var(rs) *
     (Avg(ds) * Avg(ds)) / (Avg(rs) * Avg(rs));
 re *= (ds->n + rs->n) / (ds->n * rs->n * (ds->n + rs->n - 2.0));
 re = t * sqrt(re);

 if (fabs(d) > e) {

  printf("Difference at %.1f%% confidence\n", studentpct[confidx]);
  printf("	%g +/- %g\n", d, e);
  printf("	%g%% +/- %g%%\n", d * 100 / Avg(rs), re * 100 / Avg(rs));
  printf("	(Student's t, pooled s = %g)\n", spool);
 } else {
  printf("No difference proven at %.1f%% confidence\n",
      studentpct[confidx]);
 }
}
