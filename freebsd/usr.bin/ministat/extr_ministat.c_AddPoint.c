
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {int n; int lpoints; double* points; double sy; } ;


 int assert (int ) ;
 double* calloc (int,int) ;
 int free (double*) ;
 int memcpy (double*,double*,int) ;

__attribute__((used)) static void
AddPoint(struct dataset *ds, double a)
{
 double *dp;

 if (ds->n >= ds->lpoints) {
  dp = ds->points;
  ds->lpoints *= 4;
  ds->points = calloc(sizeof *ds->points, ds->lpoints);
  assert(ds->points != ((void*)0));
  memcpy(ds->points, dp, sizeof *dp * ds->n);
  free(dp);
 }
 ds->points[ds->n++] = a;
 ds->sy += a;
}
