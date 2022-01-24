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
struct TYPE_3__ {void* ptr; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;
struct chunk {scalar_t__ ch_block; scalar_t__ ch_size; TYPE_2__ ch_u; int /*<<< orphan*/  ch_type; } ;
typedef  scalar_t__ lba_t ;

/* Variables and functions */
 int /*<<< orphan*/  CH_TYPE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct chunk*,struct chunk*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  ch_list ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  image_chunks ; 
 int /*<<< orphan*/  image_nchunks ; 
 struct chunk* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct chunk*,struct chunk*,int) ; 
 scalar_t__ secsz ; 

__attribute__((used)) static struct chunk *
FUNC5(struct chunk *ch, lba_t blk)
{
	struct chunk *new;
	void *ptr;

	ptr = FUNC1(1, secsz);
	if (ptr == NULL)
		return (NULL);

	if (ch->ch_block < blk) {
		new = FUNC3(sizeof(*new));
		if (new == NULL) {
			FUNC2(ptr);
			return (NULL);
		}
		FUNC4(new, ch, sizeof(*new));
		ch->ch_size = (blk - ch->ch_block) * secsz;
		new->ch_block = blk;
		new->ch_size -= ch->ch_size;
		FUNC0(&image_chunks, ch, new, ch_list);
		image_nchunks++;
		ch = new;
	}

	if (ch->ch_size > secsz) {
		new = FUNC3(sizeof(*new));
		if (new == NULL) {
			FUNC2(ptr);
			return (NULL);
		}
		FUNC4(new, ch, sizeof(*new));
		ch->ch_size = secsz;
		new->ch_block++;
		new->ch_size -= secsz;
		FUNC0(&image_chunks, ch, new, ch_list);
		image_nchunks++;
	}

	ch->ch_type = CH_TYPE_MEMORY;
	ch->ch_u.mem.ptr = ptr;
	return (ch);
}