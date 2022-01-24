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
struct ixl_vsi {int num_tx_queues; int num_rx_queues; } ;
struct ixl_pf_qtag {int dummy; } ;
struct ixl_pf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ixl_pf*,struct ixl_pf_qtag*,int) ; 
 int FUNC1 (struct ixl_pf*,struct ixl_pf_qtag*,int) ; 

int
FUNC2(struct ixl_pf *pf, struct ixl_vsi *vsi, struct ixl_pf_qtag *qtag)
{
	int error = 0;

	for (int i = 0; i < vsi->num_tx_queues; i++)
		error = FUNC1(pf, qtag, i);

	for (int i = 0; i < vsi->num_rx_queues; i++)
		error = FUNC0(pf, qtag, i);

	return (error);
}