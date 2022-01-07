
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str_shortlen; scalar_t__ str_longlen; scalar_t__ str_numstr; } ;
typedef TYPE_1__ STRFILE ;



__attribute__((used)) static void
zero_tbl(STRFILE *tp)
{
 tp->str_numstr = 0;
 tp->str_longlen = 0;
 tp->str_shortlen = ~0;
}
