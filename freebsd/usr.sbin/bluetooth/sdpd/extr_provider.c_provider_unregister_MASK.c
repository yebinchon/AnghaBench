#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* provider_p ;
struct TYPE_5__ {struct TYPE_5__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  change_state ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  provider_next ; 
 int /*<<< orphan*/  providers ; 

void
FUNC2(provider_p provider)
{
	FUNC0(&providers, provider, provider_next);
	if (provider->data != NULL)
		FUNC1(provider->data);
	FUNC1(provider);
	change_state ++;
}