
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int structsize ;
struct sbuf {scalar_t__ s_error; } ;
struct proc {int dummy; } ;
struct kinfo_file {int dummy; } ;
typedef size_t ssize_t ;


 int KASSERT (int,char*) ;
 int KERN_FILEDESC_PACK_KINFO ;
 int PROC_LOCK (struct proc*) ;
 int SBUF_FIXEDLEN ;
 scalar_t__ coredump_pack_fileinfo ;
 int kern_proc_filedesc_out (struct proc*,struct sbuf*,size_t,int) ;
 int sbuf_bcat (struct sbuf*,int*,int) ;
 int sbuf_count_drain ;
 int sbuf_delete (struct sbuf*) ;
 size_t sbuf_end_section (struct sbuf*,size_t,int ,int ) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,int,int ) ;
 int sbuf_putc (struct sbuf*,int ) ;
 int sbuf_set_drain (struct sbuf*,int ,size_t*) ;
 int sbuf_start_section (struct sbuf*,size_t*) ;

__attribute__((used)) static void
note_procstat_files(void *arg, struct sbuf *sb, size_t *sizep)
{
 struct proc *p;
 size_t size, sect_sz, i;
 ssize_t start_len, sect_len;
 int structsize, filedesc_flags;

 if (coredump_pack_fileinfo)
  filedesc_flags = KERN_FILEDESC_PACK_KINFO;
 else
  filedesc_flags = 0;

 p = (struct proc *)arg;
 structsize = sizeof(struct kinfo_file);
 if (sb == ((void*)0)) {
  size = 0;
  sb = sbuf_new(((void*)0), ((void*)0), 128, SBUF_FIXEDLEN);
  sbuf_set_drain(sb, sbuf_count_drain, &size);
  sbuf_bcat(sb, &structsize, sizeof(structsize));
  PROC_LOCK(p);
  kern_proc_filedesc_out(p, sb, -1, filedesc_flags);
  sbuf_finish(sb);
  sbuf_delete(sb);
  *sizep = size;
 } else {
  sbuf_start_section(sb, &start_len);

  sbuf_bcat(sb, &structsize, sizeof(structsize));
  PROC_LOCK(p);
  kern_proc_filedesc_out(p, sb, *sizep - sizeof(structsize),
      filedesc_flags);

  sect_len = sbuf_end_section(sb, start_len, 0, 0);
  if (sect_len < 0)
   return;
  sect_sz = sect_len;

  KASSERT(sect_sz <= *sizep,
      ("kern_proc_filedesc_out did not respect maxlen; "
       "requested %zu, got %zu", *sizep - sizeof(structsize),
       sect_sz - sizeof(structsize)));

  for (i = 0; i < *sizep - sect_sz && sb->s_error == 0; i++)
   sbuf_putc(sb, 0);
 }
}
