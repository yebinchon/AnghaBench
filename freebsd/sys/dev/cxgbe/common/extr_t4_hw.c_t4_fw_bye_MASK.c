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
struct fw_bye_cmd {int dummy; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  BYE ; 
 int /*<<< orphan*/  FUNC0 (struct fw_bye_cmd,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct fw_bye_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct adapter*,unsigned int,struct fw_bye_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC3(struct adapter *adap, unsigned int mbox)
{
	struct fw_bye_cmd c;

	FUNC1(&c, 0, sizeof(c));
	FUNC0(c, BYE, WRITE);
	return FUNC2(adap, mbox, &c, sizeof(c), NULL);
}