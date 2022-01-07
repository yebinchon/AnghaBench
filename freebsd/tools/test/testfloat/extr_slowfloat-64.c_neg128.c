
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a0; int a1; } ;
typedef TYPE_1__ bits128X ;



__attribute__((used)) static bits128X neg128( bits128X a )
{

    if ( a.a1 == 0 ) {
        a.a0 = - a.a0;
    }
    else {
        a.a1 = - a.a1;
        a.a0 = ~ a.a0;
    }
    return a;

}
