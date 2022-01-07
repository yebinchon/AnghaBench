
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int maxout ;
 int ** outfile ;

void
killdiv(void)
{
 int n;

 for (n = 0; n < maxout; n++)
  if (outfile[n] != ((void*)0)) {
   (void) fclose(outfile[n]);
  }
}
