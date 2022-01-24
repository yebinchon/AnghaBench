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
struct sgsave {int dummy; } ;
struct sglist {scalar_t__ sg_maxseg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sglist*,struct sgsave) ; 
 int /*<<< orphan*/  FUNC1 (struct sglist*,struct sgsave) ; 
 int FUNC2 (struct sglist*,void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct sglist *sg, void *buf, size_t len)
{
	struct sgsave save;
	int error;

	if (sg->sg_maxseg == 0)
		return (EINVAL);
	FUNC1(sg, save);
	error = FUNC2(sg, buf, len, NULL, NULL);
	if (error)
		FUNC0(sg, save);
	return (error);
}