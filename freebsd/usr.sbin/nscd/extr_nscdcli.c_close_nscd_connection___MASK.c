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
struct nscd_connection_ {int /*<<< orphan*/  write_queue; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  sockfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  close_nscd_connection ; 
 int /*<<< orphan*/  FUNC4 (struct nscd_connection_*) ; 

void
FUNC5(struct nscd_connection_ *connection)
{

	FUNC0(close_nscd_connection);
	FUNC2(connection != NULL);

	FUNC3(connection->sockfd);
	FUNC3(connection->read_queue);
	FUNC3(connection->write_queue);
	FUNC4(connection);
	FUNC1(close_nscd_connection);
}