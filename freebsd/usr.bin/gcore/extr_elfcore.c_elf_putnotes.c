
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
typedef int ssize_t ;
typedef int pid_t ;
typedef int lwpid_t ;


 int NT_ARM_VFP ;
 int NT_FPREGSET ;
 int NT_PPC_VMX ;
 int NT_PPC_VSX ;
 int NT_PROCSTAT_AUXV ;
 int NT_PROCSTAT_FILES ;
 int NT_PROCSTAT_GROUPS ;
 int NT_PROCSTAT_OSREL ;
 int NT_PROCSTAT_PROC ;
 int NT_PROCSTAT_PSSTRINGS ;
 int NT_PROCSTAT_RLIMIT ;
 int NT_PROCSTAT_UMASK ;
 int NT_PROCSTAT_VMMAP ;
 int NT_PRPSINFO ;
 int NT_PRSTATUS ;
 int NT_PTLWPINFO ;
 int NT_THRMISC ;
 int NT_X86_XSTATE ;
 int PT_GETLWPLIST ;
 int PT_GETNUMLWPS ;
 int elf_note_arm_vfp ;
 int elf_note_fpregset ;
 int elf_note_powerpc_vmx ;
 int elf_note_powerpc_vsx ;
 int elf_note_procstat_auxv ;
 int elf_note_procstat_files ;
 int elf_note_procstat_groups ;
 int elf_note_procstat_osrel ;
 int elf_note_procstat_proc ;
 int elf_note_procstat_psstrings ;
 int elf_note_procstat_rlimit ;
 int elf_note_procstat_umask ;
 int elf_note_procstat_vmmap ;
 int elf_note_prpsinfo ;
 int elf_note_prstatus ;
 int elf_note_ptlwpinfo ;
 int elf_note_thrmisc ;
 int elf_note_x86_xstate ;
 int elf_putnote (int ,int ,int *,struct sbuf*) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int free (int *) ;
 int * malloc (size_t) ;
 size_t ptrace (int ,int ,void*,size_t) ;
 int sbuf_end_section (struct sbuf*,size_t,int,int ) ;
 int sbuf_start_section (struct sbuf*,size_t*) ;

__attribute__((used)) static void
elf_putnotes(pid_t pid, struct sbuf *sb, size_t *sizep)
{
 lwpid_t *tids;
 size_t threads, old_len;
 ssize_t size;
 int i;

 errno = 0;
 threads = ptrace(PT_GETNUMLWPS, pid, ((void*)0), 0);
 if (errno)
  err(1, "PT_GETNUMLWPS");
 tids = malloc(threads * sizeof(*tids));
 if (tids == ((void*)0))
  errx(1, "out of memory");
 errno = 0;
 ptrace(PT_GETLWPLIST, pid, (void *)tids, threads);
 if (errno)
  err(1, "PT_GETLWPLIST");

 sbuf_start_section(sb, &old_len);
 elf_putnote(NT_PRPSINFO, elf_note_prpsinfo, &pid, sb);

 for (i = 0; i < threads; ++i) {
  elf_putnote(NT_PRSTATUS, elf_note_prstatus, tids + i, sb);
  elf_putnote(NT_FPREGSET, elf_note_fpregset, tids + i, sb);
  elf_putnote(NT_THRMISC, elf_note_thrmisc, tids + i, sb);
  elf_putnote(NT_PTLWPINFO, elf_note_ptlwpinfo, tids + i, sb);




  elf_putnote(NT_X86_XSTATE, elf_note_x86_xstate, tids + i, sb);







 }


 elf_putnote(NT_PROCSTAT_PROC, elf_note_procstat_proc, &pid, sb);
 elf_putnote(NT_PROCSTAT_FILES, elf_note_procstat_files, &pid, sb);
 elf_putnote(NT_PROCSTAT_VMMAP, elf_note_procstat_vmmap, &pid, sb);
 elf_putnote(NT_PROCSTAT_GROUPS, elf_note_procstat_groups, &pid, sb);
 elf_putnote(NT_PROCSTAT_UMASK, elf_note_procstat_umask, &pid, sb);
 elf_putnote(NT_PROCSTAT_RLIMIT, elf_note_procstat_rlimit, &pid, sb);
 elf_putnote(NT_PROCSTAT_OSREL, elf_note_procstat_osrel, &pid, sb);
 elf_putnote(NT_PROCSTAT_PSSTRINGS, elf_note_procstat_psstrings, &pid,
     sb);
 elf_putnote(NT_PROCSTAT_AUXV, elf_note_procstat_auxv, &pid, sb);


 size = sbuf_end_section(sb, old_len, 1, 0);
 if (size == -1)
  err(1, "sbuf_end_section");
 free(tids);
 *sizep = size;
}
