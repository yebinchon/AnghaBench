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
struct sglist {int dummy; } ;

/* Variables and functions */
 struct sglist* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct sglist*,void*,size_t) ; 
 int FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sglist*) ; 

struct sglist *
FUNC4(void *buf, size_t len, int mflags)
{
	struct sglist *sg;
	int nsegs;

	if (len == 0)
		return (NULL);

	nsegs = FUNC2(buf, len);
	sg = FUNC0(nsegs, mflags);
	if (sg == NULL)
		return (NULL);
	if (FUNC1(sg, buf, len) != 0) {
		FUNC3(sg);
		return (NULL);
	}
	return (sg);
}