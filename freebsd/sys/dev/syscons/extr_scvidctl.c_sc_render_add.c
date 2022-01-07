
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc_renderer_t ;


 int LIST_INSERT_HEAD (int *,int *,int ) ;
 int link ;
 int sc_rndr_list ;

int
sc_render_add(sc_renderer_t *rndr)
{
 LIST_INSERT_HEAD(&sc_rndr_list, rndr, link);
 return 0;
}
