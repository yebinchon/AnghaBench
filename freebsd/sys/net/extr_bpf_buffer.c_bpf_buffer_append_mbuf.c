
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct mbuf {int dummy; } ;
struct bpf_d {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int m_copydata (struct mbuf const*,int ,int,int *) ;

void
bpf_buffer_append_mbuf(struct bpf_d *d, caddr_t buf, u_int offset, void *src,
    u_int len)
{
 const struct mbuf *m;
 u_char *dst;

 m = (struct mbuf *)src;
 dst = (u_char *)buf + offset;
 m_copydata(m, 0, len, dst);
}
