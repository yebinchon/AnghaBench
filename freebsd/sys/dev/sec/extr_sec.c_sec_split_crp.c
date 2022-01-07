
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptop {struct cryptodesc* crp_desc; } ;
struct cryptodesc {int crd_alg; struct cryptodesc* crd_next; } ;


 int EINVAL ;
 scalar_t__ sec_mdeu_can_handle (int ) ;

__attribute__((used)) static int
sec_split_crp(struct cryptop *crp, struct cryptodesc **enc,
    struct cryptodesc **mac)
{
 struct cryptodesc *e, *m, *t;

 e = crp->crp_desc;
 m = e->crd_next;


 if (m && m->crd_next)
  return (EINVAL);

 if (sec_mdeu_can_handle(e->crd_alg)) {
  t = m;
  m = e;
  e = t;
 }

 if (m && !sec_mdeu_can_handle(m->crd_alg))
  return (EINVAL);

 *enc = e;
 *mac = m;

 return (0);
}
