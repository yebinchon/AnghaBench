
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
typedef TYPE_1__ nltype ;


 int EQUALTO ;
 int GREATERTHAN ;
 int LESSTHAN ;

__attribute__((used)) static int
valcmp(const void *v1, const void *v2)
{
    const nltype *p1 = (const nltype *)v1;
    const nltype *p2 = (const nltype *)v2;

    if ( p1 -> value < p2 -> value ) {
 return LESSTHAN;
    }
    if ( p1 -> value > p2 -> value ) {
 return GREATERTHAN;
    }
    return EQUALTO;
}
