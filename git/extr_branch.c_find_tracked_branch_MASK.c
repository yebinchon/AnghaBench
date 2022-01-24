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
struct TYPE_2__ {int /*<<< orphan*/ * src; } ;
struct tracking {int matches; TYPE_1__ spec; int /*<<< orphan*/ * src; int /*<<< orphan*/  remote; } ;
struct remote {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct remote*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct remote *remote, void *priv)
{
	struct tracking *tracking = priv;

	if (!FUNC2(remote, &tracking->spec)) {
		if (++tracking->matches == 1) {
			tracking->src = tracking->spec.src;
			tracking->remote = remote->name;
		} else {
			FUNC1(tracking->spec.src);
			FUNC0(tracking->src);
		}
		tracking->spec.src = NULL;
	}

	return 0;
}