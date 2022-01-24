#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_entry_t ;
typedef  int uintmax_t ;
struct sseg_closure {int count; scalar_t__ size; } ;
struct sbuf {int dummy; } ;
struct ptrace_io_desc {char* piod_addr; int piod_len; int /*<<< orphan*/ * piod_offs; int /*<<< orphan*/  piod_op; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int p_filesz; scalar_t__ p_vaddr; } ;
typedef  int /*<<< orphan*/  Elf_Shdr ;
typedef  TYPE_1__ Elf_Phdr ;
typedef  int /*<<< orphan*/  Elf_Ehdr ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  PIOD_READ_D ; 
 int PN_XNUM ; 
 int /*<<< orphan*/  PT_ATTACH ; 
 int /*<<< orphan*/  PT_IO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cb_size_segment ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sseg_closure*) ; 
 int /*<<< orphan*/  elf_detach ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sbuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_pid ; 
 int /*<<< orphan*/  g_status ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*,int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sbuf*) ; 
 size_t FUNC13 (struct sbuf*) ; 
 struct sbuf* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sbuf*,int*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (int,char*,size_t) ; 

__attribute__((used)) static void
FUNC19(int efd, int fd, pid_t pid)
{
	vm_map_entry_t map;
	struct sseg_closure seginfo;
	struct sbuf *sb;
	void *hdr;
	size_t hdrsize, notesz, segoff;
	ssize_t n, old_len;
	Elf_Phdr *php;
	int i;

	/* Attach to process to dump. */
	g_pid = pid;
	if (FUNC0(elf_detach) != 0)
		FUNC4(1, "atexit");
	errno = 0;
	FUNC7(PT_ATTACH, pid, NULL, 0);
	if (errno)
		FUNC4(1, "PT_ATTACH");
	if (FUNC17(pid, &g_status, 0) == -1)
		FUNC4(1, "waitpid");

	/* Get the program's memory map. */
	map = FUNC8(pid);

	/* Size the program segments. */
	seginfo.count = 0;
	seginfo.size = 0;
	FUNC1(map, cb_size_segment, &seginfo);

	/*
	 * Build the header and the notes using sbuf and write to the file.
	 */
	sb = FUNC14();
	hdrsize = sizeof(Elf_Ehdr) + sizeof(Elf_Phdr) * (1 + seginfo.count);
	if (seginfo.count + 1 >= PN_XNUM)
		hdrsize += sizeof(Elf_Shdr);
	/* Start header + notes section. */
	FUNC16(sb, NULL);
	/* Make empty header subsection. */
	FUNC16(sb, &old_len);
	FUNC15(sb, 0);
	FUNC11(sb, old_len, hdrsize, 0);
	/* Put notes. */
	FUNC3(pid, sb, &notesz);
	/* Align up to a page boundary for the program segments. */
	FUNC11(sb, -1, PAGE_SIZE, 0);
	if (FUNC12(sb) != 0)
		FUNC4(1, "sbuf_finish");
	hdr = FUNC9(sb);
	segoff = FUNC13(sb);
	/* Fill in the header. */
	FUNC2(efd, pid, map, hdr, hdrsize, notesz, segoff, seginfo.count);

	n = FUNC18(fd, hdr, segoff);
	if (n == -1)
		FUNC4(1, "write");
	if (n < segoff)
              FUNC5(1, "short write");

	/* Write the contents of all of the writable segments. */
	php = (Elf_Phdr *)((char *)hdr + sizeof(Elf_Ehdr)) + 1;
	for (i = 0;  i < seginfo.count;  i++) {
		struct ptrace_io_desc iorequest;
		uintmax_t nleft = php->p_filesz;

		iorequest.piod_op = PIOD_READ_D;
		iorequest.piod_offs = (caddr_t)(uintptr_t)php->p_vaddr;
		while (nleft > 0) {
			char buf[8*1024];
			size_t nwant;
			ssize_t ngot;

			if (nleft > sizeof(buf))
				nwant = sizeof buf;
			else
				nwant = nleft;
			iorequest.piod_addr = buf;
			iorequest.piod_len = nwant;
			FUNC7(PT_IO, pid, (caddr_t)&iorequest, 0);
			ngot = iorequest.piod_len;
			if ((size_t)ngot < nwant)
				FUNC5(1, "short read wanted %zu, got %zd",
				    nwant, ngot);
			ngot = FUNC18(fd, buf, nwant);
			if (ngot == -1)
				FUNC4(1, "write of segment %d failed", i);
			if ((size_t)ngot != nwant)
				FUNC5(1, "short write");
			nleft -= nwant;
			iorequest.piod_offs += ngot;
		}
		php++;
	}
	FUNC10(sb);
	FUNC6(map);
}