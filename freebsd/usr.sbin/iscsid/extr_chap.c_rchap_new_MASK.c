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
struct rchap {int /*<<< orphan*/  rchap_secret; } ;

/* Variables and functions */
 struct rchap* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

struct rchap *
FUNC3(const char *secret)
{
	struct rchap *rchap;

	rchap = FUNC0(1, sizeof(*rchap));
	if (rchap == NULL)
		FUNC2(1, "calloc");

	rchap->rchap_secret = FUNC1(secret);

	return (rchap);
}