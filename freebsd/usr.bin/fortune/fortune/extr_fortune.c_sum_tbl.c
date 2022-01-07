
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ str_longlen; scalar_t__ str_shortlen; scalar_t__ str_numstr; } ;
typedef TYPE_1__ STRFILE ;



__attribute__((used)) static void
sum_tbl(STRFILE *t1, STRFILE *t2)
{
 t1->str_numstr += t2->str_numstr;
 if (t1->str_longlen < t2->str_longlen)
  t1->str_longlen = t2->str_longlen;
 if (t1->str_shortlen > t2->str_shortlen)
  t1->str_shortlen = t2->str_shortlen;
}
