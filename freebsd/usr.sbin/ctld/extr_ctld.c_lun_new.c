
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int l_ctl_lun; int l_options; int l_name; struct conf* l_conf; } ;
struct conf {int conf_luns; } ;


 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct lun*,int ) ;
 struct lun* calloc (int,int) ;
 int checked_strdup (char const*) ;
 int l_next ;
 int log_err (int,char*) ;
 int log_warnx (char*,char const*) ;
 struct lun* lun_find (struct conf*,char const*) ;

struct lun *
lun_new(struct conf *conf, const char *name)
{
 struct lun *lun;

 lun = lun_find(conf, name);
 if (lun != ((void*)0)) {
  log_warnx("duplicated lun \"%s\"", name);
  return (((void*)0));
 }

 lun = calloc(1, sizeof(*lun));
 if (lun == ((void*)0))
  log_err(1, "calloc");
 lun->l_conf = conf;
 lun->l_name = checked_strdup(name);
 TAILQ_INIT(&lun->l_options);
 TAILQ_INSERT_TAIL(&conf->conf_luns, lun, l_next);
 lun->l_ctl_lun = -1;

 return (lun);
}
