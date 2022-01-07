
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct bpf_d {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int bcopy (int *,scalar_t__,scalar_t__) ;

void
bpf_buffer_append_bytes(struct bpf_d *d, caddr_t buf, u_int offset,
    void *src, u_int len)
{
 u_char *src_bytes;

 src_bytes = (u_char *)src;
 bcopy(src_bytes, buf + offset, len);
}
