
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat44_cfg_nat {int if_name; int mode; int redir_cnt; int ip; int name; } ;
struct cfg_nat {int id; int if_name; int mode; int redir_cnt; int ip; } ;


 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
export_nat_cfg(struct cfg_nat *ptr, struct nat44_cfg_nat *ucfg)
{

 snprintf(ucfg->name, sizeof(ucfg->name), "%d", ptr->id);
 ucfg->ip = ptr->ip;
 ucfg->redir_cnt = ptr->redir_cnt;
 ucfg->mode = ptr->mode;
 strlcpy(ucfg->if_name, ptr->if_name, sizeof(ucfg->if_name));
}
