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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct pcm_feeder {int /*<<< orphan*/  source; struct feed_format_info* data; } ;
struct pcm_channel {int dummy; } ;
struct feed_format_info {scalar_t__ oalign; scalar_t__ ialign; scalar_t__ channels; scalar_t__ obps; int /*<<< orphan*/  ibps; int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* read ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * reservoir; } ;
typedef  int /*<<< orphan*/  intpcm_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct pcm_channel*,int /*<<< orphan*/ *,scalar_t__,void*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct pcm_feeder *f, struct pcm_channel *c, uint8_t *b,
    uint32_t count, void *source)
{
	struct feed_format_info *info;
	intpcm_t v;
	uint32_t j;
	uint8_t *src, *dst;

	info = f->data;
	dst = b;
	count = FUNC2(count, info->oalign);

	do {
		if (count < info->oalign)
			break;

		if (count < info->ialign) {
			src = info->reservoir;
			j = info->ialign;
		} else {
			if (info->ialign == info->oalign)
				j = count;
			else if (info->ialign > info->oalign)
				j = FUNC2(count, info->ialign);
			else
				j = FUNC1(count, info->oalign) *
				    info->ialign;
			src = dst + count - j;
		}

		j = FUNC1(FUNC0(f->source, c, src, j, source),
		    info->ialign);
		if (j == 0)
			break;

		j *= info->channels;
		count -= j * info->obps;

		do {
			v = info->read(src);
			info->write(dst, v);
			dst += info->obps;
			src += info->ibps;
		} while (--j != 0);

	} while (count != 0);

	return (dst - b);
}