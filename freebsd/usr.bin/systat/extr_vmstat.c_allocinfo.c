
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Info {long* intrcnt; } ;


 scalar_t__ calloc (int ,int) ;
 int errx (int,char*) ;
 int nintr ;

__attribute__((used)) static void
allocinfo(struct Info *ls)
{

 ls->intrcnt = (long *) calloc(nintr, sizeof(long));
 if (ls->intrcnt == ((void*)0))
  errx(2, "out of memory");
}
