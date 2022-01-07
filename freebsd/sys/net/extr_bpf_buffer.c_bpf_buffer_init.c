
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_d {int bd_bufsize; } ;


 int bpf_bufsize ;

void
bpf_buffer_init(struct bpf_d *d)
{

 d->bd_bufsize = bpf_bufsize;
}
