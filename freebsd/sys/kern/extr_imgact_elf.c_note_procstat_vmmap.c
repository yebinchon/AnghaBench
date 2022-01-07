
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int structsize ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
struct kinfo_vmentry {int dummy; } ;


 int KERN_VMMAP_PACK_KINFO ;
 int PROC_LOCK (struct proc*) ;
 int SBUF_FIXEDLEN ;
 scalar_t__ coredump_pack_vmmapinfo ;
 int kern_proc_vmmap_out (struct proc*,struct sbuf*,size_t,int) ;
 int sbuf_bcat (struct sbuf*,int*,int) ;
 int sbuf_count_drain ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,int,int ) ;
 int sbuf_set_drain (struct sbuf*,int ,size_t*) ;

__attribute__((used)) static void
note_procstat_vmmap(void *arg, struct sbuf *sb, size_t *sizep)
{
 struct proc *p;
 size_t size;
 int structsize, vmmap_flags;

 if (coredump_pack_vmmapinfo)
  vmmap_flags = KERN_VMMAP_PACK_KINFO;
 else
  vmmap_flags = 0;

 p = (struct proc *)arg;
 structsize = sizeof(struct kinfo_vmentry);
 if (sb == ((void*)0)) {
  size = 0;
  sb = sbuf_new(((void*)0), ((void*)0), 128, SBUF_FIXEDLEN);
  sbuf_set_drain(sb, sbuf_count_drain, &size);
  sbuf_bcat(sb, &structsize, sizeof(structsize));
  PROC_LOCK(p);
  kern_proc_vmmap_out(p, sb, -1, vmmap_flags);
  sbuf_finish(sb);
  sbuf_delete(sb);
  *sizep = size;
 } else {
  sbuf_bcat(sb, &structsize, sizeof(structsize));
  PROC_LOCK(p);
  kern_proc_vmmap_out(p, sb, *sizep - sizeof(structsize),
      vmmap_flags);
 }
}
