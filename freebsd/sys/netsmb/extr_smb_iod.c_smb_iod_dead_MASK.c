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
struct smbiod {int /*<<< orphan*/  iod_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBIOD_ST_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC1 (struct smbiod*) ; 

__attribute__((used)) static void
FUNC2(struct smbiod *iod)
{
	iod->iod_state = SMBIOD_ST_DEAD;
	FUNC0(iod);
	FUNC1(iod);
}