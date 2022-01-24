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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  ubuf ;
struct sysctl_req {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sysctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct sysctl_req *req, uint64_t val)
{
	char ubuf[16];

	FUNC1((void *)ubuf, 0, sizeof(ubuf));
	FUNC2(ubuf, sizeof(ubuf), "0x%jx", val);

	return FUNC0(req, ubuf, sizeof(ubuf));
}