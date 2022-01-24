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
typedef  int u_int ;
struct uni_msg {int* b_rptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct uni_msg*) ; 

__attribute__((used)) static void
FUNC2(struct uni_msg *msg)
{
	u_int pos;

	for (pos = 0; pos < FUNC1(msg); pos++) {
		if (pos % 16 == 0)
			FUNC0("%06o ", pos);
		if (pos % 16 == 8)
			FUNC0("  ");
		FUNC0(" %02x", msg->b_rptr[pos]);
		if (pos % 16 == 15)
			FUNC0("\n");
	}
	if (pos % 16 != 0)
		FUNC0("\n");
}