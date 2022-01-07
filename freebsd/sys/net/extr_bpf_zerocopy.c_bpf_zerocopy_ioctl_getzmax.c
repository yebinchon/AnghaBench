
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct bpf_d {scalar_t__ bd_bufmode; } ;


 scalar_t__ BPF_BUFMODE_ZBUF ;
 size_t BPF_MAX_PAGES ;
 int KASSERT (int,char*) ;
 size_t PAGE_SIZE ;

int
bpf_zerocopy_ioctl_getzmax(struct thread *td, struct bpf_d *d, size_t *i)
{

 KASSERT(d->bd_bufmode == BPF_BUFMODE_ZBUF,
     ("bpf_zerocopy_ioctl_getzmax: not in zbuf mode"));

 *i = BPF_MAX_PAGES * PAGE_SIZE;
 return (0);
}
