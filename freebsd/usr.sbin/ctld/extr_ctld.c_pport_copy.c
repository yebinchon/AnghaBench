
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pport {int pp_ctl_port; int pp_name; } ;
struct conf {int dummy; } ;


 struct pport* pport_new (struct conf*,int ,int ) ;

struct pport *
pport_copy(struct pport *pp, struct conf *conf)
{
 struct pport *ppnew;

 ppnew = pport_new(conf, pp->pp_name, pp->pp_ctl_port);
 return (ppnew);
}
