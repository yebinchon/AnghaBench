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
typedef  scalar_t__ uintmax_t ;
struct chunk {long long ch_block; long long ch_size; scalar_t__ ch_type; } ;
typedef  long long lba_t ;

/* Variables and functions */
 scalar_t__ CH_TYPE_ZEROES ; 
 int EFBIG ; 
 int ENOMEM ; 
 long long SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct chunk*,int /*<<< orphan*/ ) ; 
 struct chunk* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ch_list ; 
 int /*<<< orphan*/  chunk_head ; 
 size_t FUNC3 (struct chunk*,size_t) ; 
 int /*<<< orphan*/  image_chunks ; 
 int /*<<< orphan*/  image_nchunks ; 
 struct chunk* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct chunk*,int /*<<< orphan*/ ,int) ; 
 long long secsz ; 

__attribute__((used)) static int
FUNC6(lba_t to)
{
	struct chunk *ch;
	lba_t from;
	size_t sz;

	ch = FUNC1(&image_chunks, chunk_head);
	from = (ch != NULL) ? ch->ch_block + (ch->ch_size / secsz) : 0LL;

	FUNC2(from <= to);

	/* Nothing to do? */
	if (from == to)
		return (0);
	/* Avoid bugs due to overflows. */
	if ((uintmax_t)(to - from) > (uintmax_t)(SIZE_MAX / secsz))
		return (EFBIG);
	sz = (to - from) * secsz;
	if (ch != NULL && ch->ch_type == CH_TYPE_ZEROES) {
		sz = FUNC3(ch, sz);
		if (sz == 0)
			return (0);
		from = ch->ch_block + (ch->ch_size / secsz);
	}
	ch = FUNC4(sizeof(*ch));
	if (ch == NULL)
		return (ENOMEM);
	FUNC5(ch, 0, sizeof(*ch));
	ch->ch_block = from;
	ch->ch_size = sz;
	ch->ch_type = CH_TYPE_ZEROES;
	FUNC0(&image_chunks, ch, ch_list);
	image_nchunks++;
	return (0);
}