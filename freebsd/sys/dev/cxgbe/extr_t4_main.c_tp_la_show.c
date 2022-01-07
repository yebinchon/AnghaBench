
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sbuf {int dummy; } ;


 int field_desc_show (struct sbuf*,int ,int ) ;
 int tp_la0 ;

__attribute__((used)) static void
tp_la_show(struct sbuf *sb, uint64_t *p, int idx)
{

 field_desc_show(sb, *p, tp_la0);
}
