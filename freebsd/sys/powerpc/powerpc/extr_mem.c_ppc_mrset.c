
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range_softc {int mr_ndesc; struct mem_range_desc* mr_desc; } ;
struct mem_range_desc {int mr_len; int mr_base; int mr_flags; } ;


 int EEXIST ;
 int ENOENT ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int MDF_ACTIVE ;


 int bzero (struct mem_range_desc*,int) ;

__attribute__((used)) static int
ppc_mrset(struct mem_range_softc *sc, struct mem_range_desc *desc, int *arg)
{
 int i;

 switch(*arg) {
 case 128:
  for (i = 0; i < sc->mr_ndesc; i++) {
   if (!sc->mr_desc[i].mr_len) {
    sc->mr_desc[i] = *desc;
    sc->mr_desc[i].mr_flags |= MDF_ACTIVE;
    return (0);
   }
   if (sc->mr_desc[i].mr_base == desc->mr_base &&
       sc->mr_desc[i].mr_len == desc->mr_len)
    return (EEXIST);
  }
  return (ENOSPC);
 case 129:
  for (i = 0; i < sc->mr_ndesc; i++)
   if (sc->mr_desc[i].mr_base == desc->mr_base &&
       sc->mr_desc[i].mr_len == desc->mr_len) {
    bzero(&sc->mr_desc[i], sizeof(sc->mr_desc[i]));
    return (0);
   }
  return (ENOENT);
 default:
  return (EOPNOTSUPP);
 }

 return (0);
}
