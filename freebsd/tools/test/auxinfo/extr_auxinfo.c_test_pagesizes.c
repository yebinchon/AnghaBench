
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 int err (int,char*) ;
 int getpagesizes (size_t*,int) ;
 size_t* malloc (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
test_pagesizes(void)
{
 size_t *ps;
 int i, nelem;

 nelem = getpagesizes(((void*)0), 0);
 if (nelem == -1)
  err(1, "getpagesizes(NULL, 0)");
 ps = malloc(nelem * sizeof(size_t));
 if (ps == ((void*)0))
  err(1, "malloc");
 nelem = getpagesizes(ps, nelem);
 if (nelem == -1)
  err(1, "getpagesizes");
 printf("Supported page sizes:");
 for (i = 0; i < nelem; i++)
  printf(" %jd", (intmax_t)ps[i]);
 printf("\n");
}
