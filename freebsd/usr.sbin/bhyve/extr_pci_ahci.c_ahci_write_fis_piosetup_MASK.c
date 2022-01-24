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
struct ahci_port {int dummy; } ;
typedef  int /*<<< orphan*/  fis ;

/* Variables and functions */
 int /*<<< orphan*/  FIS_TYPE_PIOSETUP ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ahci_port *p)
{
	uint8_t fis[20];

	FUNC1(fis, 0, sizeof(fis));
	fis[0] = FIS_TYPE_PIOSETUP;
	FUNC0(p, FIS_TYPE_PIOSETUP, fis);
}