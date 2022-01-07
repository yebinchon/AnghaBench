
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptoini {int cri_alg; struct cryptoini* cri_next; } ;


 int EINVAL ;
 scalar_t__ sec_mdeu_can_handle (int ) ;

__attribute__((used)) static int
sec_split_cri(struct cryptoini *cri, struct cryptoini **enc,
    struct cryptoini **mac)
{
 struct cryptoini *e, *m;

 e = cri;
 m = cri->cri_next;


 if (m && m->cri_next)
  return (EINVAL);

 if (sec_mdeu_can_handle(e->cri_alg)) {
  cri = m;
  m = e;
  e = cri;
 }

 if (m && !sec_mdeu_can_handle(m->cri_alg))
  return (EINVAL);

 *enc = e;
 *mac = m;

 return (0);
}
