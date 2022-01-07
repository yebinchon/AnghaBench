
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc_term_sw_t ;


 int LIST_INSERT_HEAD (int *,int *,int ) ;
 int link ;
 int sc_term_list ;

int
sc_term_add(sc_term_sw_t *sw)
{
 LIST_INSERT_HEAD(&sc_term_list, sw, link);
 return 0;
}
