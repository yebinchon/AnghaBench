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
struct info {char* name; } ;
typedef  scalar_t__ caddr_t ;
typedef  int bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 long MAXNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,long) ; 

__attribute__((used)) static bool_t
FUNC2(XDR *xdrsp, caddr_t cp)
{
	struct info *ifp = (struct info *)cp;
	long len;

	if (!FUNC0(xdrsp, &len))
		return (0);
	if (len > MAXNAME)
		return (0);
	if (!FUNC1(xdrsp, ifp->name, len))
		return (0);
	ifp->name[len] = '\0';
	return (1);
}