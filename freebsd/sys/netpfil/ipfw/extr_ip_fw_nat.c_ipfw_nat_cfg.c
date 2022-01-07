
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {size_t sopt_valsize; } ;
struct nat44_cfg_redir {int spool_cnt; int proto; int rport_cnt; int pport_cnt; int rport; int pport; int lport; int raddr; int paddr; int laddr; int mode; } ;
struct nat44_cfg_nat {int redir_cnt; int mode; int ip; int if_name; int name; } ;
struct cfg_redir_legacy {int spool_cnt; int proto; int rport_cnt; int pport_cnt; int rport; int pport; int lport; int raddr; int paddr; int laddr; int mode; } ;
struct cfg_nat_legacy {scalar_t__ id; int redir_cnt; int mode; int ip; int if_name; } ;


 int EINVAL ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int V_layer3_chain ;
 int free (char*,int ) ;
 char* malloc (size_t,int ,int) ;
 int nat44_config (int *,struct nat44_cfg_nat*) ;
 size_t roundup2 (size_t,int) ;
 int snprintf (int ,int,char*,scalar_t__) ;
 int sooptcopyin (struct sockopt*,char*,size_t,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
ipfw_nat_cfg(struct sockopt *sopt)
{
 struct cfg_nat_legacy *cfg;
 struct nat44_cfg_nat *ucfg;
 struct cfg_redir_legacy *rdir;
 struct nat44_cfg_redir *urdir;
 char *buf;
 size_t len, len2;
 int error, i;

 len = sopt->sopt_valsize;
 len2 = len + 128;






 buf = malloc(roundup2(len, 8) + len2, M_TEMP, M_WAITOK | M_ZERO);
 error = sooptcopyin(sopt, buf, len, sizeof(struct cfg_nat_legacy));
 if (error != 0)
  goto out;

 cfg = (struct cfg_nat_legacy *)buf;
 if (cfg->id < 0) {
  error = EINVAL;
  goto out;
 }

 ucfg = (struct nat44_cfg_nat *)&buf[roundup2(len, 8)];
 snprintf(ucfg->name, sizeof(ucfg->name), "%d", cfg->id);
 strlcpy(ucfg->if_name, cfg->if_name, sizeof(ucfg->if_name));
 ucfg->ip = cfg->ip;
 ucfg->mode = cfg->mode;
 ucfg->redir_cnt = cfg->redir_cnt;

 if (len < sizeof(*cfg) + cfg->redir_cnt * sizeof(*rdir)) {
  error = EINVAL;
  goto out;
 }

 urdir = (struct nat44_cfg_redir *)(ucfg + 1);
 rdir = (struct cfg_redir_legacy *)(cfg + 1);
 for (i = 0; i < cfg->redir_cnt; i++) {
  urdir->mode = rdir->mode;
  urdir->laddr = rdir->laddr;
  urdir->paddr = rdir->paddr;
  urdir->raddr = rdir->raddr;
  urdir->lport = rdir->lport;
  urdir->pport = rdir->pport;
  urdir->rport = rdir->rport;
  urdir->pport_cnt = rdir->pport_cnt;
  urdir->rport_cnt = rdir->rport_cnt;
  urdir->proto = rdir->proto;
  urdir->spool_cnt = rdir->spool_cnt;

  urdir++;
  rdir++;
 }

 nat44_config(&V_layer3_chain, ucfg);

out:
 free(buf, M_TEMP);
 return (error);
}
