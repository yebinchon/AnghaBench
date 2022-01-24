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
struct ewah_bitmap {int /*<<< orphan*/  rlw; } ;
typedef  int eword_t ;

/* Variables and functions */
 int RLW_LARGEST_LITERAL_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ewah_bitmap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ewah_bitmap*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC5(struct ewah_bitmap *self, eword_t new_data)
{
	eword_t current_num = FUNC3(self->rlw);

	if (current_num >= RLW_LARGEST_LITERAL_COUNT) {
		FUNC2(self, 0);

		FUNC4(self->rlw, 1);
		FUNC1(self, new_data);
		return 2;
	}

	FUNC4(self->rlw, current_num + 1);

	/* sanity check */
	FUNC0(FUNC3(self->rlw) == current_num + 1);

	FUNC1(self, new_data);
	return 1;
}