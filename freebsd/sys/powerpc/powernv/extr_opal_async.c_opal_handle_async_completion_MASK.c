#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct opal_msg {int* params; } ;
struct TYPE_2__ {int completed; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* completions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct opal_msg*,int) ; 

__attribute__((used)) static void FUNC2(void *arg, struct opal_msg *msg)
{
	int token;

	token = msg->params[0];
	FUNC1(&completions[token].msg, msg, sizeof(*msg));
	FUNC0();
	completions[token].completed = true;
}