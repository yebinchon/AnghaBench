#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_4__ {int /*<<< orphan*/  ofs; int /*<<< orphan*/  fd; } ;
struct TYPE_6__ {TYPE_2__ mem; TYPE_1__ file; } ;
struct chunk {scalar_t__ ch_block; size_t ch_size; int ch_type; TYPE_3__ ch_u; } ;
typedef  scalar_t__ lba_t ;

/* Variables and functions */
#define  CH_TYPE_FILE 130 
#define  CH_TYPE_MEMORY 129 
#define  CH_TYPE_ZEROES 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct chunk* FUNC1 (scalar_t__) ; 
 int FUNC2 (int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,size_t) ; 
 scalar_t__ secsz ; 

int
FUNC5(int fd, lba_t blk, lba_t size)
{
	struct chunk *ch;
	size_t ofs, sz;
	int error;

	size *= secsz;

	error = 0;
	while (!error && size > 0) {
		ch = FUNC1(blk);
		if (ch == NULL) {
			error = EINVAL;
			break;
		}
		ofs = (blk - ch->ch_block) * secsz;
		sz = ch->ch_size - ofs;
		sz = ((lba_t)sz < size) ? sz : (size_t)size;
		switch (ch->ch_type) {
		case CH_TYPE_ZEROES:
			error = FUNC4(fd, sz);
			break;
		case CH_TYPE_FILE:
			error = FUNC2(fd, sz, ch->ch_u.file.fd,
			    ch->ch_u.file.ofs + ofs);
			break;
		case CH_TYPE_MEMORY:
			error = FUNC3(fd, sz, ch->ch_u.mem.ptr);
			break;
		default:
			FUNC0(0);
		}
		size -= sz;
		blk += sz / secsz;
	}
	return (error);
}