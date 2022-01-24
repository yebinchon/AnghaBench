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
typedef  int /*<<< orphan*/  uint8_t ;
struct nfscldevinfo {int /*<<< orphan*/  nfsdi_refcnt; } ;
struct nfsclclient {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct nfscldevinfo* FUNC2 (struct nfsclclient*,int /*<<< orphan*/ *) ; 

struct nfscldevinfo *
FUNC3(struct nfsclclient *clp, uint8_t *deviceid,
    struct nfscldevinfo *dip)
{

	FUNC0();
	if (dip == NULL)
		dip = FUNC2(clp, deviceid);
	if (dip != NULL)
		dip->nfsdi_refcnt++;
	FUNC1();
	return (dip);
}