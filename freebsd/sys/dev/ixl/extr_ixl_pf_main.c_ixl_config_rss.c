
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_pf {int dummy; } ;


 int ixl_set_rss_hlut (struct ixl_pf*) ;
 int ixl_set_rss_key (struct ixl_pf*) ;
 int ixl_set_rss_pctypes (struct ixl_pf*) ;

void
ixl_config_rss(struct ixl_pf *pf)
{
 ixl_set_rss_key(pf);
 ixl_set_rss_pctypes(pf);
 ixl_set_rss_hlut(pf);
}
