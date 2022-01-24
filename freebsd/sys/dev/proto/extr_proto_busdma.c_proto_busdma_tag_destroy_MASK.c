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
struct proto_tag {int /*<<< orphan*/ * parent; int /*<<< orphan*/  children; int /*<<< orphan*/  mds; } ;
struct proto_busdma {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct proto_tag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PROTO_BUSDMA ; 
 int /*<<< orphan*/  FUNC2 (struct proto_tag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  peers ; 
 int /*<<< orphan*/  tags ; 

__attribute__((used)) static int
FUNC3(struct proto_busdma *busdma, struct proto_tag *tag)
{

	if (!FUNC0(&tag->mds))
		return (EBUSY);
	if (!FUNC0(&tag->children))
		return (EBUSY);

	if (tag->parent != NULL) {
		FUNC1(tag, peers);
		tag->parent = NULL;
	}
	FUNC1(tag, tags);
	FUNC2(tag, M_PROTO_BUSDMA);
	return (0);
}