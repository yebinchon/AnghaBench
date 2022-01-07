
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int dummy; } ;
struct g_part_parms {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
g_part_bsd64_bootcode(struct g_part_table *basetable, struct g_part_parms *gpp)
{

 return (EOPNOTSUPP);
}
