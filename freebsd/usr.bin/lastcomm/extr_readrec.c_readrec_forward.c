
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acctv3 {int dummy; } ;
typedef int FILE ;


 int EOF ;
 scalar_t__ ferror (int *) ;
 int getc (int *) ;
 int readrec_v1 (int *,struct acctv3*) ;
 int readrec_vx (int *,struct acctv3*) ;
 int ungetc (int,int *) ;

int
readrec_forward(FILE *f, struct acctv3 *av3)
{
 int magic, rv;

 if ((magic = getc(f)) == EOF)
  return (ferror(f) ? EOF : 0);
 if (ungetc(magic, f) == EOF)
  return (EOF);
 if (magic != 0)

  rv = readrec_v1(f, av3);
 else

  rv = readrec_vx(f, av3);
 return (rv == EOF ? EOF : 1);
}
