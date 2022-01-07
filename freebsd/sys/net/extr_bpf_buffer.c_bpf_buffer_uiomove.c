
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uio {int dummy; } ;
struct bpf_d {int dummy; } ;
typedef int caddr_t ;


 int uiomove (int ,int ,struct uio*) ;

int
bpf_buffer_uiomove(struct bpf_d *d, caddr_t buf, u_int len, struct uio *uio)
{

 return (uiomove(buf, len, uio));
}
