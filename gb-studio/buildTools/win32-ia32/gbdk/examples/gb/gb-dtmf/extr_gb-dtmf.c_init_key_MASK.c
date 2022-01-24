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
typedef  int UBYTE ;

/* Variables and functions */
 int KEY_STEP ; 
 int /*<<< orphan*/  key_num ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3()
{
	UBYTE key_x, key_y, i, j;

	/* To make numeric KeyPad */
	FUNC1(0, 24, key_num);

	/* key pad 1 - 3 */
	key_y = KEY_STEP + 40;
	for(i = 1;i <= 3;i++){
		key_x = i * KEY_STEP;
		FUNC2(i, i);
		FUNC0(i, key_x, key_y);
	}

	/* key pad 4 - 6 */
	key_y = KEY_STEP * 2 + 40;
	for(i = 4;i <= 6;i++){
		key_x = (i - 3) * KEY_STEP;
		FUNC2(i, i);
		FUNC0(i, key_x, key_y);
	}

	/* key pad 7 - 9 */
	key_y = KEY_STEP * 3 + 40;
		for(i = 7;i <= 9;i++){
			key_x = (i - 6) * KEY_STEP;
			FUNC2(i, i);
			FUNC0(i, key_x, key_y);
		}

	/* key pad 'A' - 'D' */
	key_x = KEY_STEP * 4;
	for(i = 0;i <= 3;i++){
		key_y = (i+1) * KEY_STEP + 40;
		FUNC2(i+10, i+10);
		FUNC0(i+10, key_x, key_y);
	}

	/* key pad '*', '0', '#' */
	FUNC2(15, 15);
	FUNC0(15, KEY_STEP * 1, KEY_STEP * 4 + 40);
	FUNC2(0, 0);
	FUNC0(0, KEY_STEP * 2, KEY_STEP * 4 + 40);
	FUNC2(14, 14);
	FUNC0(14, KEY_STEP * 3, KEY_STEP * 4 + 40);

	/* func left */
	key_x = KEY_STEP * 5 + 8;
	for(i = 0;i <= 2;i++){
		key_y = (i+1) * KEY_STEP + 40;
		FUNC2(i+16, i+16);
		FUNC0(i+16, key_x, key_y);
	}

	/* func right */
	key_x = KEY_STEP * 6 + 8;
	for(i = 0;i <= 2;i++){
		key_y = (i+1) * KEY_STEP + 40;
		FUNC2(i+19, i+19);
		FUNC0(i+19, key_x, key_y);
	}

	/* dialing button */
	key_x = KEY_STEP * 5 + 20;
	key_y = KEY_STEP * 4 + 40;
	FUNC2(22, 22);
	FUNC0(22, key_x, key_y);
}