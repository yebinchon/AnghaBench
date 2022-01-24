#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int fd; scalar_t__ ofs; } ;
struct TYPE_4__ {TYPE_1__ file; } ;
struct chunk {scalar_t__ ch_type; scalar_t__ ch_block; int ch_size; TYPE_2__ ch_u; } ;
typedef  scalar_t__ off_t ;
typedef  scalar_t__ lba_t ;

/* Variables and functions */
 scalar_t__ CH_TYPE_FILE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct chunk*,int /*<<< orphan*/ ) ; 
 struct chunk* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ch_list ; 
 int /*<<< orphan*/  chunk_head ; 
 size_t FUNC2 (struct chunk*,size_t) ; 
 int /*<<< orphan*/  image_chunks ; 
 int /*<<< orphan*/  image_nchunks ; 
 struct chunk* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct chunk*,int /*<<< orphan*/ ,int) ; 
 int secsz ; 

__attribute__((used)) static int
FUNC5(lba_t blk, size_t sz, off_t ofs, int fd)
{
	struct chunk *ch;

	ch = FUNC1(&image_chunks, chunk_head);
	if (ch != NULL && ch->ch_type == CH_TYPE_FILE) {
		if (fd == ch->ch_u.file.fd &&
		    blk == (lba_t)(ch->ch_block + (ch->ch_size / secsz)) &&
		    ofs == (off_t)(ch->ch_u.file.ofs + ch->ch_size)) {
			sz = FUNC2(ch, sz);
			if (sz == 0)
				return (0);
			blk = ch->ch_block + (ch->ch_size / secsz);
			ofs = ch->ch_u.file.ofs + ch->ch_size;
		}
	}
	ch = FUNC3(sizeof(*ch));
	if (ch == NULL)
		return (ENOMEM);
	FUNC4(ch, 0, sizeof(*ch));
	ch->ch_block = blk;
	ch->ch_size = sz;
	ch->ch_type = CH_TYPE_FILE;
	ch->ch_u.file.ofs = ofs;
	ch->ch_u.file.fd = fd;
	FUNC0(&image_chunks, ch, ch_list);
	image_nchunks++;
	return (0);
}