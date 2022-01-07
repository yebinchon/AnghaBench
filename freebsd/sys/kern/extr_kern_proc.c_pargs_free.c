
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pargs {int dummy; } ;


 int M_PARGS ;
 int free (struct pargs*,int ) ;

__attribute__((used)) static void
pargs_free(struct pargs *pa)
{

 free(pa, M_PARGS);
}
