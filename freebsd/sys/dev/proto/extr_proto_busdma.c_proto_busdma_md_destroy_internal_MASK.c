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
struct proto_md {int /*<<< orphan*/  bd_tag; int /*<<< orphan*/  bd_map; int /*<<< orphan*/ * virtaddr; scalar_t__ physaddr; } ;
struct proto_busdma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proto_md*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PROTO_BUSDMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct proto_md*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mds ; 
 int /*<<< orphan*/  peers ; 

__attribute__((used)) static int
FUNC6(struct proto_busdma *busdma,
    struct proto_md *md)
{

	FUNC0(md, mds);
	FUNC0(md, peers);
	if (md->physaddr)
		FUNC3(md->bd_tag, md->bd_map);
	if (md->virtaddr != NULL)
		FUNC4(md->bd_tag, md->virtaddr, md->bd_map);
	else
		FUNC2(md->bd_tag, md->bd_map);
	FUNC1(md->bd_tag);
	FUNC5(md, M_PROTO_BUSDMA);
	return (0);
}