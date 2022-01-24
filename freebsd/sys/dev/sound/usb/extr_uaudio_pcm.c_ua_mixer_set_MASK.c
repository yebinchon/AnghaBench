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
typedef  int uint8_t ;
struct snd_mixer {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_mixer*) ; 
 struct mtx* FUNC1 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 scalar_t__ FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC6(struct snd_mixer *m, unsigned type, unsigned left, unsigned right)
{
	struct mtx *mtx = FUNC1(m);
	uint8_t do_unlock;

	if (FUNC3(mtx)) {
		do_unlock = 0;
	} else {
		do_unlock = 1;
		FUNC2(mtx);
	}
	FUNC5(FUNC0(m), type, left, right);
	if (do_unlock) {
		FUNC4(mtx);
	}
	return (left | (right << 8));
}