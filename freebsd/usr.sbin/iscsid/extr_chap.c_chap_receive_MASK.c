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
struct chap {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,void**,size_t*) ; 
 int FUNC1 (struct chap*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

int
FUNC4(struct chap *chap, const char *response)
{
	void *response_bin;
	size_t response_bin_len;
	int error;

	error = FUNC0(response, &response_bin, &response_bin_len);
	if (error != 0) {
		FUNC3("got incorrectly encoded CHAP response \"%s\"",
		    response);
		return (1);
	}

	error = FUNC1(chap, response_bin, response_bin_len);
	FUNC2(response_bin);

	return (error);
}