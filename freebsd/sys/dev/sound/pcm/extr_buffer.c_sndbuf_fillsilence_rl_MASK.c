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
typedef  int /*<<< orphan*/  u_int ;
struct snd_dbuf {scalar_t__ bufsize; int /*<<< orphan*/  rl; scalar_t__ rp; int /*<<< orphan*/  fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_dbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct snd_dbuf *b, u_int rl)
{
	if (b->bufsize > 0)
		FUNC0(FUNC2(b), FUNC3(b->fmt), b->bufsize);
	b->rp = 0;
	b->rl = FUNC1(b->bufsize, rl);
}