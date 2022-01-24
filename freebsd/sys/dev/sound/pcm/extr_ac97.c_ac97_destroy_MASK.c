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
struct ac97_info {int /*<<< orphan*/  lock; int /*<<< orphan*/ * methods; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_AC97 ; 
 int /*<<< orphan*/  FUNC0 (struct ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct ac97_info *codec)
{
	FUNC3(codec->lock);
	if (codec->methods != NULL)
		FUNC1(codec->methods, M_AC97);
	FUNC2(codec->lock);
	FUNC0(codec, M_AC97);
}