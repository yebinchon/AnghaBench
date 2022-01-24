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
struct resource_list_entry {int flags; int /*<<< orphan*/ * res; } ;
struct resource_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int RF_ACTIVE ; 
 int RLE_ALLOCATED ; 
 int RLE_RESERVED ; 
 struct resource_list_entry* FUNC1 (struct resource_list*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct resource_list *rl, int type, int rid)
{
	struct resource_list_entry *rle;

	rle = FUNC1(rl, type, rid);
	if (rle == NULL || rle->res == NULL)
		return (0);
	if ((rle->flags & (RLE_RESERVED | RLE_ALLOCATED)) == RLE_RESERVED) {
		FUNC0(!(FUNC2(rle->res) & RF_ACTIVE),
		    ("reserved resource is active"));
		return (0);
	}
	return (1);
}