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
struct snd_midi {int dummy; } ;
struct mpu401 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpu401*,int /*<<< orphan*/ ) ; 
 scalar_t__ MPU_ACK ; 
 int /*<<< orphan*/  MPU_RESET ; 
 int /*<<< orphan*/  MPU_UART ; 
 scalar_t__ FUNC1 (struct mpu401*) ; 
 scalar_t__ FUNC2 (struct mpu401*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct snd_midi *sm, void *arg)
{
	struct mpu401 *m = arg;
	int i;

	FUNC0(m, MPU_RESET);
	FUNC0(m, MPU_UART);
	return 0;
	i = 0;
	while (++i < 2000) {
		if (FUNC2(m))
			if (FUNC1(m) == MPU_ACK)
				break;
	}

	if (i < 2000) {
		FUNC0(m, MPU_UART);
		return 0;
	}
	FUNC3("mpu401_minit failed active sensing\n");
	return 1;
}