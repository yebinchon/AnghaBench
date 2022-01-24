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
struct iwnstats {int /*<<< orphan*/  s; int /*<<< orphan*/  st; } ;
struct iwn_ioctl_data {int dst_len; int /*<<< orphan*/ * dst_addr; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGIWNSTATS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(struct iwnstats *is)
{
	int err;
	struct iwn_ioctl_data d;

	FUNC1("st: %p\n", &is->st);
	d.dst_addr = &is->st;
	d.dst_len = sizeof(is->st);
	err = FUNC0(is->s, SIOCGIWNSTATS, (caddr_t) &d);
	if (err < 0)
		FUNC2("ioctl");
	return (err);
}