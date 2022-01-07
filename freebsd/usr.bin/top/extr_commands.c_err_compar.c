
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct errs {int errnum; int arg; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
err_compar(const void *p1, const void *p2)
{
    int result;
    const struct errs * const g1 = (const struct errs * const)p1;
    const struct errs * const g2 = (const struct errs * const)p2;



    if ((result = g1->errnum - g2->errnum) == 0)
    {
 return(strcmp(g1->arg, g2->arg));
    }
    return(result);
}
