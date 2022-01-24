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
typedef  int /*<<< orphan*/  val ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCAL_CREDS ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(int sockfd)
{
	socklen_t sz;
	int rc, val;

	sz = sizeof(val);
	rc = FUNC1(sockfd, 0, LOCAL_CREDS, &val, &sz);
	FUNC0(rc != -1, "getsockopt(LOCAL_CREDS) failed: %s",
	    FUNC2(errno));
	return (val != 0);
}