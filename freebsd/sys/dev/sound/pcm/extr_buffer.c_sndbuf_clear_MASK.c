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
typedef  int /*<<< orphan*/  u_char ;
struct snd_dbuf {unsigned int bufsize; int /*<<< orphan*/  fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct snd_dbuf*) ; 
 int FUNC1 (struct snd_dbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct snd_dbuf *b, unsigned int length)
{
	int i;
	u_char data, *p;

	if (length == 0)
		return;
	if (length > b->bufsize)
		length = b->bufsize;

	data = FUNC2(b->fmt);

	i = FUNC1(b);
	p = FUNC0(b);
	while (length > 0) {
		p[i] = data;
		length--;
		i++;
		if (i >= b->bufsize)
			i = 0;
	}
}