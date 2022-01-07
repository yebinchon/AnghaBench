
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int * active ;
 int fclose (int *) ;
 int getc (int *) ;
 int m4errx (int,char*) ;
 int ** outfile ;
 int putc (int,int *) ;
 int rewind (int *) ;

void
getdiv(int n)
{
 int c;

 if (active == outfile[n])
  m4errx(1, "undivert: diversion still active.");
 rewind(outfile[n]);
 while ((c = getc(outfile[n])) != EOF)
  putc(c, active);
 (void) fclose(outfile[n]);
 outfile[n] = ((void*)0);
}
