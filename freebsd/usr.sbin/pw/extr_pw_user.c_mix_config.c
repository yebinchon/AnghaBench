
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userconf {scalar_t__ default_password; scalar_t__ reuse_uids; scalar_t__ reuse_gids; scalar_t__ homemode; scalar_t__ min_uid; scalar_t__ max_uid; scalar_t__ min_gid; scalar_t__ max_gid; scalar_t__ expire_days; scalar_t__ password_days; int * default_class; int * groups; int * default_group; int * shell_default; int * shells; int * shelldir; int * home; int * logfile; int * newmail; int * dotdir; int * nispasswd; } ;



__attribute__((used)) static void
mix_config(struct userconf *cmdcnf, struct userconf *cfg)
{

 if (cmdcnf->default_password < 0)
  cmdcnf->default_password = cfg->default_password;
 if (cmdcnf->reuse_uids == 0)
  cmdcnf->reuse_uids = cfg->reuse_uids;
 if (cmdcnf->reuse_gids == 0)
  cmdcnf->reuse_gids = cfg->reuse_gids;
 if (cmdcnf->nispasswd == ((void*)0))
  cmdcnf->nispasswd = cfg->nispasswd;
 if (cmdcnf->dotdir == ((void*)0))
  cmdcnf->dotdir = cfg->dotdir;
 if (cmdcnf->newmail == ((void*)0))
  cmdcnf->newmail = cfg->newmail;
 if (cmdcnf->logfile == ((void*)0))
  cmdcnf->logfile = cfg->logfile;
 if (cmdcnf->home == ((void*)0))
  cmdcnf->home = cfg->home;
 if (cmdcnf->homemode == 0)
  cmdcnf->homemode = cfg->homemode;
 if (cmdcnf->shelldir == ((void*)0))
  cmdcnf->shelldir = cfg->shelldir;
 if (cmdcnf->shells == ((void*)0))
  cmdcnf->shells = cfg->shells;
 if (cmdcnf->shell_default == ((void*)0))
  cmdcnf->shell_default = cfg->shell_default;
 if (cmdcnf->default_group == ((void*)0))
  cmdcnf->default_group = cfg->default_group;
 if (cmdcnf->groups == ((void*)0))
  cmdcnf->groups = cfg->groups;
 if (cmdcnf->default_class == ((void*)0))
  cmdcnf->default_class = cfg->default_class;
 if (cmdcnf->min_uid == 0)
  cmdcnf->min_uid = cfg->min_uid;
 if (cmdcnf->max_uid == 0)
  cmdcnf->max_uid = cfg->max_uid;
 if (cmdcnf->min_gid == 0)
  cmdcnf->min_gid = cfg->min_gid;
 if (cmdcnf->max_gid == 0)
  cmdcnf->max_gid = cfg->max_gid;
 if (cmdcnf->expire_days < 0)
  cmdcnf->expire_days = cfg->expire_days;
 if (cmdcnf->password_days < 0)
  cmdcnf->password_days = cfg->password_days;
}
