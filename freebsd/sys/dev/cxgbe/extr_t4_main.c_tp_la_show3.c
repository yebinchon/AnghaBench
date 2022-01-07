
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct sbuf {int dummy; } ;


 int TPLA_SIZE ;
 int field_desc_show (struct sbuf*,unsigned long long,int ) ;
 int sbuf_printf (struct sbuf*,char*) ;
 int tp_la0 ;
 int tp_la1 ;
 int tp_la2 ;

__attribute__((used)) static void
tp_la_show3(struct sbuf *sb, uint64_t *p, int idx)
{

 if (idx)
  sbuf_printf(sb, "\n");
 field_desc_show(sb, p[0], tp_la0);
 if (idx < (TPLA_SIZE / 2 - 1) || p[1] != ~0ULL)
  field_desc_show(sb, p[1], (p[0] & (1 << 17)) ? tp_la2 : tp_la1);
}
