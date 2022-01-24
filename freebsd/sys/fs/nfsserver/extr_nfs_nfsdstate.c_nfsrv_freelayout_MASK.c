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
struct nfslayouthead {int dummy; } ;
struct nfslayout {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NFSDSTATE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct nfslayout*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfslayouthead*,struct nfslayout*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfslayout*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lay_list ; 
 int /*<<< orphan*/  nfsrv_layoutcnt ; 

__attribute__((used)) static void
FUNC4(struct nfslayouthead *lhp, struct nfslayout *lyp)
{

	FUNC0(4, "Freelayout=%p\n", lyp);
	FUNC2(&nfsrv_layoutcnt, -1);
	FUNC1(lhp, lyp, lay_list);
	FUNC3(lyp, M_NFSDSTATE);
}