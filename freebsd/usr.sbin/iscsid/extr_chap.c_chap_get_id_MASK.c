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
struct chap {int /*<<< orphan*/  chap_id; } ;

/* Variables and functions */
 int FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

char *
FUNC2(const struct chap *chap)
{
	char *chap_i;
	int ret;

	ret = FUNC0(&chap_i, "%d", chap->chap_id);
	if (ret < 0)
		FUNC1(1, "asprintf");

	return (chap_i);
}