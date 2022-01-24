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
struct stat {size_t st_size; } ;
struct file_reader {char elsymb; int fd; size_t mmapsize; int cbsz; scalar_t__ bsz; int /*<<< orphan*/ * file; void* buffer; scalar_t__ strbeg; int /*<<< orphan*/ * mmapaddr; int /*<<< orphan*/ * mmapptr; int /*<<< orphan*/  fname; } ;
struct TYPE_2__ {scalar_t__ zflag; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int MAP_NOCORE ; 
 int MAP_NOSYNC ; 
 int MAP_PREFAULT_READ ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int READ_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * compress_program ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (struct file_reader*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 void* FUNC9 (int) ; 
 TYPE_1__ sort_opts_vals ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 scalar_t__ use_mmap ; 

struct file_reader *
FUNC12(const char *fsrc)
{
	struct file_reader *ret;

	if (fsrc == NULL)
		fsrc = "-";

	ret = FUNC9(sizeof(struct file_reader));
	FUNC5(ret, 0, sizeof(struct file_reader));

	ret->elsymb = '\n';
	if (sort_opts_vals.zflag)
		ret->elsymb = 0;

	ret->fname = FUNC10(fsrc);

	if (FUNC11(fsrc, "-") && (compress_program == NULL) && use_mmap) {

		do {
			struct stat stat_buf;
			void *addr;
			size_t sz = 0;
			int fd, flags;

			flags = MAP_NOCORE | MAP_NOSYNC;

			fd = FUNC7(fsrc, O_RDONLY);
			if (fd < 0)
				FUNC1(2, NULL);

			if (FUNC4(fd, &stat_buf) < 0) {
				FUNC0(fd);
				break;
			}

			sz = stat_buf.st_size;

#if defined(MAP_PREFAULT_READ)
			flags |= MAP_PREFAULT_READ;
#endif

			addr = FUNC6(NULL, sz, PROT_READ, flags, fd, 0);
			if (addr == MAP_FAILED) {
				FUNC0(fd);
				break;
			}

			ret->fd = fd;
			ret->mmapaddr = addr;
			ret->mmapsize = sz;
			ret->mmapptr = ret->mmapaddr;

		} while (0);
	}

	if (ret->mmapaddr == NULL) {
		ret->file = FUNC8(fsrc, "r");
		if (ret->file == NULL)
			FUNC1(2, NULL);

		if (FUNC11(fsrc, "-")) {
			ret->cbsz = READ_CHUNK;
			ret->buffer = FUNC9(ret->cbsz);
			ret->bsz = 0;
			ret->strbeg = 0;

			ret->bsz = FUNC3(ret->buffer, 1, ret->cbsz, ret->file);
			if (ret->bsz == 0) {
				if (FUNC2(ret->file))
					FUNC1(2, NULL);
			}
		}
	}

	return (ret);
}