
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int beta; int alpha; int max_ecnth; int max_burst; int tupdate; int qdelay_ref; } ;
struct dn_sch_fq_pie_parms {int flows_cnt; int limit; int quantum; TYPE_1__ pcfg; } ;
struct fq_pie_schk {struct dn_sch_fq_pie_parms cfg; } ;
struct dn_schk {int dummy; } ;
struct dn_extra_parms {int * par; int name; } ;
struct TYPE_4__ {int name; } ;


 TYPE_2__ fq_pie_desc ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
fq_pie_getconfig (struct dn_schk *_schk, struct dn_extra_parms *ep) {

 struct fq_pie_schk *schk = (struct fq_pie_schk *)(_schk+1);
 struct dn_sch_fq_pie_parms *fqp_cfg;

 fqp_cfg = &schk->cfg;

 strcpy(ep->name, fq_pie_desc.name);
 ep->par[0] = fqp_cfg->pcfg.qdelay_ref;
 ep->par[1] = fqp_cfg->pcfg.tupdate;
 ep->par[2] = fqp_cfg->pcfg.max_burst;
 ep->par[3] = fqp_cfg->pcfg.max_ecnth;
 ep->par[4] = fqp_cfg->pcfg.alpha;
 ep->par[5] = fqp_cfg->pcfg.beta;
 ep->par[6] = fqp_cfg->pcfg.flags;

 ep->par[7] = fqp_cfg->quantum;
 ep->par[8] = fqp_cfg->limit;
 ep->par[9] = fqp_cfg->flows_cnt;

 return 0;
}
