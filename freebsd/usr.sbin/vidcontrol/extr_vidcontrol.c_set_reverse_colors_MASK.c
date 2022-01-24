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
typedef  size_t* _index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(int argc, char **argv, int *_index)
{
	int color;

	if ((color = FUNC1(argv[*(_index)-1])) != -1) {
		FUNC0(stderr, "\033[=%dH", color);
		if (*_index < argc
		    && (color = FUNC1(argv[*_index])) != -1) {
			(*_index)++;
			FUNC0(stderr, "\033[=%dI", color);
		}
	}
}