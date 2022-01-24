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
struct remote {int dummy; } ;
struct refspec_item {char* dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct refspec_item*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct remote*,struct refspec_item*) ; 

__attribute__((used)) static int FUNC2(struct remote *remote, void *cb_data)
{
	char *tracking_branch = cb_data;
	struct refspec_item query;
	FUNC0(&query, 0, sizeof(struct refspec_item));
	query.dst = tracking_branch;
	return !FUNC1(remote, &query);
}