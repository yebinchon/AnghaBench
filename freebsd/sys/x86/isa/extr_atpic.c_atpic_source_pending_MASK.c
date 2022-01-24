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
struct intsrc {scalar_t__ is_pic; } ;
struct atpic_intsrc {int dummy; } ;
struct atpic {int /*<<< orphan*/  at_ioaddr; } ;

/* Variables and functions */
 int FUNC0 (struct atpic_intsrc*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct intsrc *isrc)
{
	struct atpic_intsrc *ai = (struct atpic_intsrc *)isrc;
	struct atpic *ap = (struct atpic *)isrc->is_pic;

	return (FUNC1(ap->at_ioaddr) & FUNC0(ai));
}