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
struct session2_op {int mac; size_t mackeylen; int crid; int ses; void const* mackey; } ;
typedef  int /*<<< orphan*/  sop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CIOCGSESSION2 ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct session2_op*) ; 
 int /*<<< orphan*/  FUNC2 (struct session2_op*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(int fd, int alg, int crid, const void *key, size_t klen)
{
	struct session2_op sop;

	FUNC2(&sop, 0, sizeof(sop));

	sop.mac = alg;
	sop.mackey = key;
	sop.mackeylen = klen;
	sop.crid = crid;

	FUNC0(FUNC1(fd, CIOCGSESSION2, &sop) >= 0,
	    "alg %d keylen %zu, errno=%d (%s)", alg, klen, errno,
	    FUNC3(errno));
	return (sop.ses);
}