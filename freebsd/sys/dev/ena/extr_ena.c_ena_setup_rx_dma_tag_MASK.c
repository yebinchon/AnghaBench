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
struct ena_adapter {int /*<<< orphan*/  rx_buf_tag; int /*<<< orphan*/  max_rx_sgl_size; int /*<<< orphan*/  dma_width; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MJUM16BYTES ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ena_adapter *adapter)
{
	int ret;

	/* Create DMA tag for Rx buffers*/
	ret = FUNC1(FUNC2(adapter->pdev), /* parent   */
	    1, 0,				  /* alignment, bounds 	     */
	    FUNC0(adapter->dma_width), /* lowaddr of excl window  */
	    BUS_SPACE_MAXADDR, 			  /* highaddr of excl window */
	    NULL, NULL,				  /* filter, filterarg 	     */
	    MJUM16BYTES,			  /* maxsize 		     */
	    adapter->max_rx_sgl_size,		  /* nsegments 		     */
	    MJUM16BYTES,			  /* maxsegsize 	     */
	    0,					  /* flags 		     */
	    NULL,				  /* lockfunc 		     */
	    NULL,				  /* lockarg 		     */
	    &adapter->rx_buf_tag);

	return (ret);
}