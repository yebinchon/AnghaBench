#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int PortNumber; } ;
typedef  TYPE_1__ MSG_PORT_ENABLE_REPLY ;
typedef  int /*<<< orphan*/  MSG_DEFAULT_REPLY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2(MSG_PORT_ENABLE_REPLY *msg)
{

	FUNC0((MSG_DEFAULT_REPLY *)msg);
	FUNC1("\tPort:         %d\n", msg->PortNumber);
}