
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hash; } ;
struct object {TYPE_1__ oid; } ;
struct TYPE_7__ {char const* refname; } ;
struct TYPE_6__ {int sorted; TYPE_3__* table; int nr; } ;


 int QSORT (TYPE_3__*,int ,int ) ;
 int nth_tip_table_ent ;
 int sha1_pos (int ,TYPE_3__*,int ,int ) ;
 TYPE_2__ tip_table ;
 int tipcmp ;

__attribute__((used)) static const char *get_exact_ref_match(const struct object *o)
{
 int found;

 if (!tip_table.table || !tip_table.nr)
  return ((void*)0);

 if (!tip_table.sorted) {
  QSORT(tip_table.table, tip_table.nr, tipcmp);
  tip_table.sorted = 1;
 }

 found = sha1_pos(o->oid.hash, tip_table.table, tip_table.nr,
    nth_tip_table_ent);
 if (0 <= found)
  return tip_table.table[found].refname;
 return ((void*)0);
}
