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
struct sort_list_item {int /*<<< orphan*/  ka; } ;
struct key_value {struct bwstring* k; } ;
struct bwstring {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct bwstring const*) ; 
 scalar_t__ FUNC1 (struct bwstring const*,size_t) ; 
 struct key_value* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC3(struct sort_list_item *sli, size_t level)
{
	const struct key_value *kv;
	const struct bwstring *bws;

	kv = FUNC2(&sli->ka, 0);
	bws = kv->k;

	if ((FUNC0(bws) > level))
		return (unsigned char) FUNC1(bws,level);
	return (-1);
}