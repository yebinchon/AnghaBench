
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct pfl_entry {scalar_t__ index; int * pkts; int * bytes; int evals; int name; } ;
struct TYPE_2__ {char* label; int * packets; int * bytes; int evaluations; int action; } ;
struct pfioc_rule {scalar_t__ nr; TYPE_1__ rule; int anchor; } ;
typedef int pr ;


 int DIOCGETRULE ;
 int DIOCGETRULES ;
 size_t IN ;
 int LOG_ERR ;
 size_t OUT ;
 int PF_PASS ;
 int TAILQ_INSERT_TAIL (int *,struct pfl_entry*,int ) ;
 int bzero (struct pfioc_rule*,int) ;
 int dev ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct pfioc_rule*) ;
 int link ;
 scalar_t__ malloc (int) ;
 int pfl_table ;
 scalar_t__ pfl_table_count ;
 int strerror (int ) ;
 int strlcat (int ,char*,int) ;
 int strlcpy (int ,char const*,int) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int
pfl_scan_ruleset(const char *path)
{
 struct pfioc_rule pr;
 struct pfl_entry *e;
 u_int32_t nr, i;

 bzero(&pr, sizeof(pr));
 strlcpy(pr.anchor, path, sizeof(pr.anchor));
 pr.rule.action = PF_PASS;
 if (ioctl(dev, DIOCGETRULES, &pr)) {
  syslog(LOG_ERR, "pfl_scan_ruleset: ioctl(DIOCGETRULES): %s",
      strerror(errno));
  goto err;
 }

 for (nr = pr.nr, i = 0; i < nr; i++) {
  pr.nr = i;
  if (ioctl(dev, DIOCGETRULE, &pr)) {
   syslog(LOG_ERR, "pfl_scan_ruleset: ioctl(DIOCGETRULE):"
       " %s", strerror(errno));
   goto err;
  }

  if (pr.rule.label[0]) {
   e = (struct pfl_entry *)malloc(sizeof(*e));
   if (e == ((void*)0))
    goto err;

   strlcpy(e->name, path, sizeof(e->name));
   if (path[0])
    strlcat(e->name, "/", sizeof(e->name));
   strlcat(e->name, pr.rule.label, sizeof(e->name));

   e->evals = pr.rule.evaluations;
   e->bytes[IN] = pr.rule.bytes[IN];
   e->bytes[OUT] = pr.rule.bytes[OUT];
   e->pkts[IN] = pr.rule.packets[IN];
   e->pkts[OUT] = pr.rule.packets[OUT];
   e->index = ++pfl_table_count;

   TAILQ_INSERT_TAIL(&pfl_table, e, link);
  }
 }

 return (0);

err:
 return (-1);
}
