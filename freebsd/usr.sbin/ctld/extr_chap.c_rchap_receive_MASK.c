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
struct rchap {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rchap*,unsigned char,void*,size_t) ; 
 unsigned char FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 

int
FUNC5(struct rchap *rchap, const char *id, const char *challenge)
{
	unsigned char id_bin;
	void *challenge_bin;
	size_t challenge_bin_len;

	int error;

	id_bin = FUNC4(id, NULL, 10);

	error = FUNC0(challenge, &challenge_bin, &challenge_bin_len);
	if (error != 0) {
		FUNC2("got incorrectly encoded CHAP challenge \"%s\"",
		    challenge);
		return (1);
	}

	FUNC3(rchap, id_bin, challenge_bin, challenge_bin_len);
	FUNC1(challenge_bin);

	return (0);
}