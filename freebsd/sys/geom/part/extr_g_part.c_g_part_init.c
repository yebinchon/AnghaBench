
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int TAILQ_INSERT_HEAD (int *,int *,int ) ;
 int g_part_null_scheme ;
 int g_part_schemes ;
 int scheme_list ;

__attribute__((used)) static void
g_part_init(struct g_class *mp)
{

 TAILQ_INSERT_HEAD(&g_part_schemes, &g_part_null_scheme, scheme_list);
}
