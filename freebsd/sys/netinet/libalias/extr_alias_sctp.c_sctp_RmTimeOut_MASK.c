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
struct sctp_nat_assoc {int dummy; } ;
struct libalias {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_nat_assoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_Q ; 

__attribute__((used)) static void
FUNC2(struct libalias *la, struct sctp_nat_assoc *assoc)
{
	FUNC0(la);
	FUNC1(assoc, timer_Q);/* Note this is O(1) */
}