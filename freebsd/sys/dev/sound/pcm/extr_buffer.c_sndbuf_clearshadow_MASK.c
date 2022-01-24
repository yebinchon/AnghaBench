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
struct snd_dbuf {scalar_t__ sl; int /*<<< orphan*/  fmt; int /*<<< orphan*/ * shadbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct snd_dbuf *b)
{
	FUNC0(b != NULL, ("b is a null pointer"));
	FUNC0(b->sl >= 0, ("illegal shadow length"));

	if ((b->shadbuf != NULL) && (b->sl > 0))
		FUNC1(b->shadbuf, FUNC2(b->fmt), b->sl);
}