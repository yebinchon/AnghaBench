
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ a1; scalar_t__ a0; } ;
typedef TYPE_1__ bits64X ;



__attribute__((used)) static bits64X add64( bits64X a, bits64X b )
{

    a.a1 += b.a1;
    a.a0 += b.a0 + ( a.a1 < b.a1 );
    return a;

}
