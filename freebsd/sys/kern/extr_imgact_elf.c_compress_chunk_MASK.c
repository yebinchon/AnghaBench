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
typedef  scalar_t__ u_int ;
struct coredump_params {int /*<<< orphan*/  comp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_BUF_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC3 (char*,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct coredump_params *p, char *base, char *buf, u_int len)
{
	u_int chunk_len;
	int error;

	while (len > 0) {
		chunk_len = FUNC0(len, CORE_BUF_SIZE);

		/*
		 * We can get EFAULT error here.
		 * In that case zero out the current chunk of the segment.
		 */
		error = FUNC3(base, buf, chunk_len);
		if (error != 0)
			FUNC1(buf, chunk_len);
		error = FUNC2(p->comp, buf, chunk_len);
		if (error != 0)
			break;
		base += chunk_len;
		len -= chunk_len;
	}
	return (error);
}