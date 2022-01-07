
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct zbuf {int zb_uaddr; size_t zb_size; size_t zb_numpages; struct bpf_zbuf_header* zb_header; int ** zb_pages; } ;
struct vm_map {int dummy; } ;
struct thread {TYPE_2__* td_proc; } ;
struct sf_buf {int dummy; } ;
struct bpf_zbuf_header {int dummy; } ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {struct vm_map vm_map; } ;


 size_t BPF_MAX_PAGES ;
 int EFAULT ;
 int EINVAL ;
 int M_BPF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_MASK ;
 size_t PAGE_SIZE ;
 int bzero (struct bpf_zbuf_header*,int) ;
 void* malloc (int,int ,int) ;
 scalar_t__ sf_buf_kva (int *) ;
 int zbuf_free (struct zbuf*) ;
 int * zbuf_sfbuf_get (struct vm_map*,int) ;

__attribute__((used)) static int
zbuf_setup(struct thread *td, vm_offset_t uaddr, size_t len,
    struct zbuf **zbp)
{
 struct zbuf *zb;
 struct vm_map *map;
 int error, i;

 *zbp = ((void*)0);




 if (uaddr & PAGE_MASK)
  return (EINVAL);




 if (len & PAGE_MASK)
  return (EINVAL);




 if ((len / PAGE_SIZE) > BPF_MAX_PAGES)
  return (EINVAL);




 error = 0;
 zb = malloc(sizeof(*zb), M_BPF, M_ZERO | M_WAITOK);
 zb->zb_uaddr = uaddr;
 zb->zb_size = len;
 zb->zb_numpages = len / PAGE_SIZE;
 zb->zb_pages = malloc(sizeof(struct sf_buf *) *
     zb->zb_numpages, M_BPF, M_ZERO | M_WAITOK);
 map = &td->td_proc->p_vmspace->vm_map;
 for (i = 0; i < zb->zb_numpages; i++) {
  zb->zb_pages[i] = zbuf_sfbuf_get(map,
      uaddr + (i * PAGE_SIZE));
  if (zb->zb_pages[i] == ((void*)0)) {
   error = EFAULT;
   goto error;
  }
 }
 zb->zb_header =
     (struct bpf_zbuf_header *)sf_buf_kva(zb->zb_pages[0]);
 bzero(zb->zb_header, sizeof(*zb->zb_header));
 *zbp = zb;
 return (0);

error:
 zbuf_free(zb);
 return (error);
}
