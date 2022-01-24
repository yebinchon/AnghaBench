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
struct xs_dev_data {char* read_buffer; int /*<<< orphan*/  ev_rsel; int /*<<< orphan*/  read_cons; int /*<<< orphan*/  read_prod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xs_dev_data*) ; 

__attribute__((used)) static void
FUNC4(struct xs_dev_data *u, const char *data, unsigned int len)
{
	unsigned int i;

	for (i = 0; i < len; i++, u->read_prod++)
		u->read_buffer[FUNC1(u->read_prod)] = data[i];

	FUNC0((u->read_prod - u->read_cons) <= sizeof(u->read_buffer),
	    ("xenstore reply too big"));

	FUNC3(u);
	FUNC2(&u->ev_rsel);
}