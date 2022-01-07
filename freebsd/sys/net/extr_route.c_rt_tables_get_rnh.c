
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rib_head {int dummy; } ;


 struct rib_head** rt_tables_get_rnh_ptr (int,int) ;

struct rib_head *
rt_tables_get_rnh(int table, int fam)
{

 return (*rt_tables_get_rnh_ptr(table, fam));
}
