#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sbuf {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  lwpid_t ;

/* Variables and functions */
 int /*<<< orphan*/  NT_ARM_VFP ; 
 int /*<<< orphan*/  NT_FPREGSET ; 
 int /*<<< orphan*/  NT_PPC_VMX ; 
 int /*<<< orphan*/  NT_PPC_VSX ; 
 int /*<<< orphan*/  NT_PROCSTAT_AUXV ; 
 int /*<<< orphan*/  NT_PROCSTAT_FILES ; 
 int /*<<< orphan*/  NT_PROCSTAT_GROUPS ; 
 int /*<<< orphan*/  NT_PROCSTAT_OSREL ; 
 int /*<<< orphan*/  NT_PROCSTAT_PROC ; 
 int /*<<< orphan*/  NT_PROCSTAT_PSSTRINGS ; 
 int /*<<< orphan*/  NT_PROCSTAT_RLIMIT ; 
 int /*<<< orphan*/  NT_PROCSTAT_UMASK ; 
 int /*<<< orphan*/  NT_PROCSTAT_VMMAP ; 
 int /*<<< orphan*/  NT_PRPSINFO ; 
 int /*<<< orphan*/  NT_PRSTATUS ; 
 int /*<<< orphan*/  NT_PTLWPINFO ; 
 int /*<<< orphan*/  NT_THRMISC ; 
 int /*<<< orphan*/  NT_X86_XSTATE ; 
 int /*<<< orphan*/  PT_GETLWPLIST ; 
 int /*<<< orphan*/  PT_GETNUMLWPS ; 
 int /*<<< orphan*/  elf_note_arm_vfp ; 
 int /*<<< orphan*/  elf_note_fpregset ; 
 int /*<<< orphan*/  elf_note_powerpc_vmx ; 
 int /*<<< orphan*/  elf_note_powerpc_vsx ; 
 int /*<<< orphan*/  elf_note_procstat_auxv ; 
 int /*<<< orphan*/  elf_note_procstat_files ; 
 int /*<<< orphan*/  elf_note_procstat_groups ; 
 int /*<<< orphan*/  elf_note_procstat_osrel ; 
 int /*<<< orphan*/  elf_note_procstat_proc ; 
 int /*<<< orphan*/  elf_note_procstat_psstrings ; 
 int /*<<< orphan*/  elf_note_procstat_rlimit ; 
 int /*<<< orphan*/  elf_note_procstat_umask ; 
 int /*<<< orphan*/  elf_note_procstat_vmmap ; 
 int /*<<< orphan*/  elf_note_prpsinfo ; 
 int /*<<< orphan*/  elf_note_prstatus ; 
 int /*<<< orphan*/  elf_note_ptlwpinfo ; 
 int /*<<< orphan*/  elf_note_thrmisc ; 
 int /*<<< orphan*/  elf_note_x86_xstate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC6 (struct sbuf*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,size_t*) ; 

__attribute__((used)) static void
FUNC8(pid_t pid, struct sbuf *sb, size_t *sizep)
{
	lwpid_t *tids;
	size_t threads, old_len;
	ssize_t size;
	int i;

	errno = 0;
	threads = FUNC5(PT_GETNUMLWPS, pid, NULL, 0);
	if (errno)
		FUNC1(1, "PT_GETNUMLWPS");
	tids = FUNC4(threads * sizeof(*tids));
	if (tids == NULL)
		FUNC2(1, "out of memory");
	errno = 0;
	FUNC5(PT_GETLWPLIST, pid, (void *)tids, threads);
	if (errno)
		FUNC1(1, "PT_GETLWPLIST");

	FUNC7(sb, &old_len);
	FUNC0(NT_PRPSINFO, elf_note_prpsinfo, &pid, sb);

	for (i = 0; i < threads; ++i) {
		FUNC0(NT_PRSTATUS, elf_note_prstatus, tids + i, sb);
		FUNC0(NT_FPREGSET, elf_note_fpregset, tids + i, sb);
		FUNC0(NT_THRMISC, elf_note_thrmisc, tids + i, sb);
		FUNC0(NT_PTLWPINFO, elf_note_ptlwpinfo, tids + i, sb);
#if defined(__arm__)
		elf_putnote(NT_ARM_VFP, elf_note_arm_vfp, tids + i, sb);
#endif
#if defined(__i386__) || defined(__amd64__)
		FUNC0(NT_X86_XSTATE, elf_note_x86_xstate, tids + i, sb);
#endif
#if defined(__powerpc__)
		elf_putnote(NT_PPC_VMX, elf_note_powerpc_vmx, tids + i, sb);
#ifndef __SPE__
		elf_putnote(NT_PPC_VSX, elf_note_powerpc_vsx, tids + i, sb);
#endif
#endif
	}

#ifndef ELFCORE_COMPAT_32
	FUNC0(NT_PROCSTAT_PROC, elf_note_procstat_proc, &pid, sb);
	FUNC0(NT_PROCSTAT_FILES, elf_note_procstat_files, &pid, sb);
	FUNC0(NT_PROCSTAT_VMMAP, elf_note_procstat_vmmap, &pid, sb);
	FUNC0(NT_PROCSTAT_GROUPS, elf_note_procstat_groups, &pid, sb);
	FUNC0(NT_PROCSTAT_UMASK, elf_note_procstat_umask, &pid, sb);
	FUNC0(NT_PROCSTAT_RLIMIT, elf_note_procstat_rlimit, &pid, sb);
	FUNC0(NT_PROCSTAT_OSREL, elf_note_procstat_osrel, &pid, sb);
	FUNC0(NT_PROCSTAT_PSSTRINGS, elf_note_procstat_psstrings, &pid,
	    sb);
	FUNC0(NT_PROCSTAT_AUXV, elf_note_procstat_auxv, &pid, sb);
#endif

	size = FUNC6(sb, old_len, 1, 0);
	if (size == -1)
		FUNC1(1, "sbuf_end_section");
	FUNC3(tids);
	*sizep = size;
}