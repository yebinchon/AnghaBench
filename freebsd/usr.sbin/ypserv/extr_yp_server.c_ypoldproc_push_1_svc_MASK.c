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
typedef  int /*<<< orphan*/  ypresponse ;
typedef  int /*<<< orphan*/  yprequest ;
struct svc_req {int dummy; } ;

/* Variables and functions */

ypresponse *
FUNC0(yprequest *argp, struct svc_req *rqstp)
{
	static ypresponse  result;

	/*
	 * Not implemented.
	 */

	return (&result);
}