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
union randomdev_key {int /*<<< orphan*/  key; int /*<<< orphan*/  cipher; int /*<<< orphan*/  chacha; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_ENCRYPT ; 
 int /*<<< orphan*/  MODE_ECB ; 
 int RANDOM_KEYSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*,int) ; 
 scalar_t__ random_chachamode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void const*) ; 

void
FUNC3(union randomdev_key *context, const void *data)
{

	if (random_chachamode) {
		FUNC0(&context->chacha, data, RANDOM_KEYSIZE * 8);
	} else {
		FUNC1(&context->cipher, MODE_ECB, NULL);
		FUNC2(&context->key, DIR_ENCRYPT, RANDOM_KEYSIZE*8, data);
	}
}