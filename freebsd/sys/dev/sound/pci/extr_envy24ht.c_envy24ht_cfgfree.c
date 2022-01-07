
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg_info {scalar_t__ free; } ;


 int M_ENVY24HT ;
 int free (struct cfg_info*,int ) ;

__attribute__((used)) static void
envy24ht_cfgfree(struct cfg_info *cfg) {
 if (cfg == ((void*)0))
  return;
 if (cfg->free)
  free(cfg, M_ENVY24HT);
 return;
}
