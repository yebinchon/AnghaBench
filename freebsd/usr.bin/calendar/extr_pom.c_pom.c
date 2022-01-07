
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXMOONS ;
 int fpom (int,double,double*,double*) ;
 int round (double) ;

void
pom(int year, double utcoffset, int *fms, int *nms)
{
 double ffms[MAXMOONS];
 double fnms[MAXMOONS];
 int i, j;

 fpom(year, utcoffset, ffms, fnms);

 j = 0;
 for (i = 0; ffms[i] != 0; i++)
  fms[j++] = round(ffms[i]);
 fms[i] = -1;
 for (i = 0; fnms[i] != 0; i++)
  nms[i] = round(fnms[i]);
 nms[i] = -1;
}
