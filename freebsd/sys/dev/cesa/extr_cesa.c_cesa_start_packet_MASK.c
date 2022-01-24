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
struct cesa_packet {unsigned int cp_size; int /*<<< orphan*/  cp_copyout; int /*<<< orphan*/  cp_copyin; scalar_t__ cp_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct cesa_packet *cp, unsigned int size)
{

	cp->cp_size = size;
	cp->cp_offset = 0;
	FUNC0(&cp->cp_copyin);
	FUNC0(&cp->cp_copyout);
}