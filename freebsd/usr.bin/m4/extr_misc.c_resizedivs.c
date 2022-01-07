
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int maxout ;
 int ** outfile ;
 int ** xreallocarray (int **,int,int,char*,int) ;

void
resizedivs(int n)
{
 int i;

 outfile = xreallocarray(outfile, n, sizeof(FILE *),
     "too many diverts %d", n);
 for (i = maxout; i < n; i++)
  outfile[i] = ((void*)0);
 maxout = n;
}
