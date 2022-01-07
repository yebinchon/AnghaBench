
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_info {int dummy; } ;
struct chash_cfg {int mask4; int mask6; } ;


 int snprintf (char*,size_t,char*,char*,...) ;

__attribute__((used)) static void
ta_print_chash_config(void *ta_state, struct table_info *ti, char *buf,
    size_t bufsize)
{
 struct chash_cfg *cfg;

 cfg = (struct chash_cfg *)ta_state;

 if (cfg->mask4 != 32 || cfg->mask6 != 128)
  snprintf(buf, bufsize, "%s masks=/%d,/%d", "addr:hash",
      cfg->mask4, cfg->mask6);
 else
  snprintf(buf, bufsize, "%s", "addr:hash");
}
