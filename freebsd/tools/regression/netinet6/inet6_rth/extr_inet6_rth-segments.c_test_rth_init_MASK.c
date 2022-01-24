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
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_RTHDR_TYPE_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC1 (void*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void
FUNC3()
{
	char buf[10240];
	char *pbuf;

	FUNC2("test_rth_init", sizeof("test_rth_init\0"));

	pbuf = FUNC1((void *)buf, 10, IPV6_RTHDR_TYPE_0, 100);
	FUNC0(NULL, pbuf, "buffer too small\0");

	pbuf = FUNC1((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 0);
	FUNC0((caddr_t)&buf, pbuf, "0 segments\0");

	pbuf = FUNC1((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 127);
	FUNC0((caddr_t)&buf, pbuf, "127 segments\0");

	pbuf = FUNC1((void *)buf, 10240, IPV6_RTHDR_TYPE_0, -1);
	FUNC0(NULL, pbuf, "negative number of segments\0");

	pbuf = FUNC1((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 128);
	FUNC0(NULL, pbuf, "128 segments\0");
}