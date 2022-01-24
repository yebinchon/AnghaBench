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
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char const*,char*,int) ; 

__attribute__((used)) static int
FUNC2(phandle_t opts, phandle_t *result, const char *inputdev,
    const char *outputdev)
{
	char buf[64];
	phandle_t input;

	if (FUNC1(opts, inputdev, buf, sizeof(buf)) == -1)
		return (ENXIO);
	input = FUNC0(buf);
	if (input == -1)
		return (ENXIO);

	if (outputdev != NULL) {
		if (FUNC1(opts, outputdev, buf, sizeof(buf)) == -1)
			return (ENXIO);
		if (FUNC0(buf) != input)
			return (ENXIO);
	}

	*result = input;
	return (0);
}