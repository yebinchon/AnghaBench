
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int flag ;
struct TYPE_4__ {scalar_t__ a0; scalar_t__ a1; } ;
typedef TYPE_1__ bits128X ;



__attribute__((used)) static flag le128( bits128X a, bits128X b )
{

    return ( a.a0 < b.a0 ) || ( ( a.a0 == b.a0 ) && ( a.a1 <= b.a1 ) );

}
