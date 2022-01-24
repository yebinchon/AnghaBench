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
struct netmap_priv {scalar_t__ nmd; scalar_t__ mevp; } ;
struct net_backend {int fd; scalar_t__ opaque; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct net_backend *be)
{
	struct netmap_priv *priv = (struct netmap_priv *)be->opaque;

	if (priv->mevp) {
		FUNC0(priv->mevp);
	}
	if (priv->nmd) {
		FUNC1(priv->nmd);
	}
	be->fd = -1;
}