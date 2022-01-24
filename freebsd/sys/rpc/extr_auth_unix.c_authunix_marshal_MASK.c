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
struct audata {int /*<<< orphan*/  au_mpos; int /*<<< orphan*/  au_marshed; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct audata* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 

__attribute__((used)) static bool_t
FUNC3(AUTH *auth, uint32_t xid, XDR *xdrs, struct mbuf *args)
{
	struct audata *au;

	au = FUNC0(auth);
	if (!FUNC1(xdrs, au->au_marshed, au->au_mpos))
		return (FALSE);

	FUNC2(xdrs, args);

	return (TRUE);
}