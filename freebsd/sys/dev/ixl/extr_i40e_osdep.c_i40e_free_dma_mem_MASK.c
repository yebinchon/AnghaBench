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
struct i40e_hw {int dummy; } ;
struct i40e_dma_mem {int /*<<< orphan*/  tag; int /*<<< orphan*/  map; int /*<<< orphan*/  va; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

i40e_status
FUNC4(struct i40e_hw *hw, struct i40e_dma_mem *mem)
{
	FUNC1(mem->tag, mem->map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	FUNC2(mem->tag, mem->map);
	FUNC3(mem->tag, mem->va, mem->map);
	FUNC0(mem->tag);
	return (I40E_SUCCESS);
}