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
typedef  int /*<<< orphan*/  structsize ;
struct sbuf {scalar_t__ s_error; } ;
struct proc {int dummy; } ;
struct kinfo_file {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KERN_FILEDESC_PACK_KINFO ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 scalar_t__ coredump_pack_fileinfo ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,struct sbuf*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,int*,int) ; 
 int /*<<< orphan*/  sbuf_count_drain ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 size_t FUNC5 (struct sbuf*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*) ; 
 struct sbuf* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*,size_t*) ; 

__attribute__((used)) static void
FUNC11(void *arg, struct sbuf *sb, size_t *sizep)
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
	if (sb == NULL) {
		size = 0;
		sb = FUNC7(NULL, NULL, 128, SBUF_FIXEDLEN);
		FUNC9(sb, sbuf_count_drain, &size);
		FUNC3(sb, &structsize, sizeof(structsize));
		FUNC1(p);
		FUNC2(p, sb, -1, filedesc_flags);
		FUNC6(sb);
		FUNC4(sb);
		*sizep = size;
	} else {
		FUNC10(sb, &start_len);

		FUNC3(sb, &structsize, sizeof(structsize));
		FUNC1(p);
		FUNC2(p, sb, *sizep - sizeof(structsize),
		    filedesc_flags);

		sect_len = FUNC5(sb, start_len, 0, 0);
		if (sect_len < 0)
			return;
		sect_sz = sect_len;

		FUNC0(sect_sz <= *sizep,
		    ("kern_proc_filedesc_out did not respect maxlen; "
		     "requested %zu, got %zu", *sizep - sizeof(structsize),
		     sect_sz - sizeof(structsize)));

		for (i = 0; i < *sizep - sect_sz && sb->s_error == 0; i++)
			FUNC8(sb, 0);
	}
}