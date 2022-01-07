
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 int expr (char const*) ;
 int min (int,int) ;
 int pushback (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static void
dosub(const char *argv[], int argc)
{
 const char *ap, *fc, *k;
 int nc;

 ap = argv[2];



 fc = ap + atoi(argv[3]);

 nc = strlen(fc);
 if (argc >= 5)



  nc = min(nc, atoi(argv[4]));

 if (fc >= ap && fc < ap + strlen(ap))
  for (k = fc + nc - 1; k >= fc; k--)
   pushback(*k);
}
