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
struct hdacc_fg {int nid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct hdacc_fg* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, char *buf,
    size_t buflen)
{
	struct hdacc_fg *fg = FUNC0(child);

	FUNC1(buf, buflen, "nid=%d", fg->nid);
	return (0);
}