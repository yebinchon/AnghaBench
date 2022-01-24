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
typedef  int /*<<< orphan*/  uint32_t ;
struct mmc_sd_status {void* erase_offset; void* erase_timeout; void* erase_size; void* au_size; void* perf_move; void* speed_class; void* prot_area; void* card_type; void* secured_mode; void* bus_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_sd_status*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void
FUNC2(uint32_t *raw_sd_status,
    struct mmc_sd_status *sd_status)
{

	FUNC0(sd_status, 0, sizeof(*sd_status));

	sd_status->bus_width = FUNC1(raw_sd_status, 512, 510, 2);
	sd_status->secured_mode = FUNC1(raw_sd_status, 512, 509, 1);
	sd_status->card_type = FUNC1(raw_sd_status, 512, 480, 16);
	sd_status->prot_area = FUNC1(raw_sd_status, 512, 448, 12);
	sd_status->speed_class = FUNC1(raw_sd_status, 512, 440, 8);
	sd_status->perf_move = FUNC1(raw_sd_status, 512, 432, 8);
	sd_status->au_size = FUNC1(raw_sd_status, 512, 428, 4);
	sd_status->erase_size = FUNC1(raw_sd_status, 512, 408, 16);
	sd_status->erase_timeout = FUNC1(raw_sd_status, 512, 402, 6);
	sd_status->erase_offset = FUNC1(raw_sd_status, 512, 400, 2);
}