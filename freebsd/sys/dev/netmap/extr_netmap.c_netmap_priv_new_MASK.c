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
struct netmap_priv_d {int np_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct netmap_priv_d* FUNC1 (int) ; 

struct netmap_priv_d*
FUNC2(void)
{
	struct netmap_priv_d *priv;

	priv = FUNC1(sizeof(struct netmap_priv_d));
	if (priv == NULL)
		return NULL;
	priv->np_refs = 1;
	FUNC0();
	return priv;
}