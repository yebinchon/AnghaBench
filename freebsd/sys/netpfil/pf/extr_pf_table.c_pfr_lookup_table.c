
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfr_ktable {int dummy; } ;


 struct pfr_ktable* RB_FIND (int ,int *,struct pfr_ktable*) ;
 int V_pfr_ktables ;
 int pfr_ktablehead ;

__attribute__((used)) static struct pfr_ktable *
pfr_lookup_table(struct pfr_table *tbl)
{

 return (RB_FIND(pfr_ktablehead, &V_pfr_ktables,
     (struct pfr_ktable *)tbl));
}
