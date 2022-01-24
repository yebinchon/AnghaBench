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
struct al_eth_kr_status_report_data {int dummy; } ;
struct al_eth_kr_data {int /*<<< orphan*/  status_report; int /*<<< orphan*/  last_lpcoeff; } ;
struct al_eth_kr_coef_up_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct al_eth_kr_data *kr_data)
{

	FUNC0(&kr_data->last_lpcoeff, 0,
	    sizeof(struct al_eth_kr_coef_up_data));
	FUNC0(&kr_data->status_report, 0,
	    sizeof(struct al_eth_kr_status_report_data));
}