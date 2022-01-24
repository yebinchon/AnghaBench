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
typedef  int /*<<< orphan*/  uint32_t ;
struct mbuf {int dummy; } ;
struct authnone_private {int /*<<< orphan*/  mcnt; int /*<<< orphan*/  mclient; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct authnone_private authnone_private ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 

__attribute__((used)) static bool_t
FUNC3(AUTH *client, uint32_t xid, XDR *xdrs, struct mbuf *args)
{
	struct authnone_private *ap = &authnone_private;

	FUNC0(xdrs != NULL, ("authnone_marshal: xdrs is null"));

	if (!FUNC1(xdrs, ap->mclient, ap->mcnt))
		return (FALSE);

	FUNC2(xdrs, args);

	return (TRUE);
}