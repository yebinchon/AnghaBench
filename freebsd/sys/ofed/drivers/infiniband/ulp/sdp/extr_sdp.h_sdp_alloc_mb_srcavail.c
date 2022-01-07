
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct socket {int dummy; } ;
struct sdp_srcah {int vaddr; void* rkey; void* len; } ;
struct mbuf {int dummy; } ;


 int SDP_MID_SRCAVAIL ;
 int cpu_to_be64 (int ) ;
 void* htonl (int ) ;
 scalar_t__ mb_put (struct mbuf*,int) ;
 struct mbuf* sdp_alloc_mb (struct socket*,int ,int,int) ;

__attribute__((used)) static inline struct mbuf *
sdp_alloc_mb_srcavail(struct socket *sk, u32 len, u32 rkey, u64 vaddr, int wait)
{
 struct mbuf *mb;
 struct sdp_srcah *srcah;

 mb = sdp_alloc_mb(sk, SDP_MID_SRCAVAIL, sizeof(*srcah), wait);
 if (mb == ((void*)0))
  return (((void*)0));
 srcah = (struct sdp_srcah *)mb_put(mb, sizeof(*srcah));
 srcah->len = htonl(len);
 srcah->rkey = htonl(rkey);
 srcah->vaddr = cpu_to_be64(vaddr);

 return mb;
}
