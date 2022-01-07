
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_d {int * bd_fbuf; int * bd_hbuf; int * bd_sbuf; } ;
typedef int * caddr_t ;


 int M_BPF ;
 int free (int *,int ) ;

void
bpf_buffer_free(struct bpf_d *d)
{

 if (d->bd_sbuf != ((void*)0))
  free(d->bd_sbuf, M_BPF);
 if (d->bd_hbuf != ((void*)0))
  free(d->bd_hbuf, M_BPF);
 if (d->bd_fbuf != ((void*)0))
  free(d->bd_fbuf, M_BPF);




}
