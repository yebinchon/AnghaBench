
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc_term_sw_t ;


 int LIST_REMOVE (int *,int ) ;
 int link ;

int
sc_term_remove(sc_term_sw_t *sw)
{
 LIST_REMOVE(sw, link);
 return 0;
}
