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
struct mbuf {int dummy; } ;
struct ifnet {scalar_t__ needed_tailroom; scalar_t__ needed_headroom; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct mbuf* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct mbuf *
FUNC1(struct ifnet *ifp, int len)
{
	return FUNC0(ifp->needed_headroom + len +
			 ifp->needed_tailroom, GFP_ATOMIC);
}