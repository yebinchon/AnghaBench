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
struct tap_priv {scalar_t__ mevp; } ;
struct net_backend {int fd; scalar_t__ opaque; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct net_backend *be)
{
	struct tap_priv *priv = (struct tap_priv *)be->opaque;

	if (priv->mevp) {
		FUNC1(priv->mevp);
	}
	if (be->fd != -1) {
		FUNC0(be->fd);
		be->fd = -1;
	}
}