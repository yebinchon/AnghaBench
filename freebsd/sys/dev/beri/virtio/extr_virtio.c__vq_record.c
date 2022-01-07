
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct vring_desc {int flags; int len; int addr; } ;
struct iovec {int iov_len; int iov_base; } ;


 int be16toh (int ) ;
 int be32toh (int ) ;
 int be64toh (int ) ;
 int paddr_map (int ,int ,int ) ;

__attribute__((used)) static inline void
_vq_record(uint32_t offs, int i, volatile struct vring_desc *vd,
 struct iovec *iov, int n_iov, uint16_t *flags) {

 if (i >= n_iov)
  return;

 iov[i].iov_base = paddr_map(offs, be64toh(vd->addr),
    be32toh(vd->len));
 iov[i].iov_len = be32toh(vd->len);
 if (flags != ((void*)0))
  flags[i] = be16toh(vd->flags);
}
