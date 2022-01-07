
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct sgsave {int dummy; } ;
struct sglist_seg {size_t ss_len; int ss_paddr; } ;
struct sglist {scalar_t__ sg_maxseg; int sg_nseg; struct sglist_seg* sg_segs; } ;


 int EINVAL ;
 int SGLIST_RESTORE (struct sglist*,struct sgsave) ;
 int SGLIST_SAVE (struct sglist*,struct sgsave) ;
 int _sglist_append_range (struct sglist*,struct sglist_seg**,int ,size_t) ;

int
sglist_append_phys(struct sglist *sg, vm_paddr_t paddr, size_t len)
{
 struct sglist_seg *ss;
 struct sgsave save;
 int error;

 if (sg->sg_maxseg == 0)
  return (EINVAL);
 if (len == 0)
  return (0);

 if (sg->sg_nseg == 0) {
  sg->sg_segs[0].ss_paddr = paddr;
  sg->sg_segs[0].ss_len = len;
  sg->sg_nseg = 1;
  return (0);
 }
 ss = &sg->sg_segs[sg->sg_nseg - 1];
 SGLIST_SAVE(sg, save);
 error = _sglist_append_range(sg, &ss, paddr, len);
 if (error)
  SGLIST_RESTORE(sg, save);
 return (error);
}
