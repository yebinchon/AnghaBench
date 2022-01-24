#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct envy24ht_spi_codec {scalar_t__ num; int /*<<< orphan*/  info; TYPE_2__* parent; int /*<<< orphan*/  cdti; int /*<<< orphan*/  cclk; int /*<<< orphan*/  cs; } ;
struct TYPE_4__ {TYPE_1__* cfg; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  cif; int /*<<< orphan*/  cdti; int /*<<< orphan*/  cclk; int /*<<< orphan*/  cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK452X_DVC_DEMOFF ; 
 int AK452X_FORMAT_1X ; 
 int AK452X_FORMAT_256FSN ; 
 int AK452X_FORMAT_I2S ; 
 scalar_t__ SPICDS_TYPE_AK4524 ; 
 scalar_t__ SPICDS_TYPE_AK4528 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(void *codec)
{
	struct envy24ht_spi_codec *ptr = codec;
	if (ptr == NULL)
		return;
#if(0)
	device_printf(ptr->parent->dev, "envy24ht_spicds_init()\n");
#endif
        ptr->cs = ptr->parent->cfg->cs;
	ptr->cclk = ptr->parent->cfg->cclk;
	ptr->cdti =  ptr->parent->cfg->cdti;
	FUNC5(ptr->info, ptr->parent->cfg->type);
	FUNC2(ptr->info, ptr->parent->cfg->cif);
	if (ptr->parent->cfg->type == SPICDS_TYPE_AK4524 || \
	ptr->parent->cfg->type == SPICDS_TYPE_AK4528) {
	FUNC4(ptr->info,
	    AK452X_FORMAT_I2S | AK452X_FORMAT_256FSN | AK452X_FORMAT_1X);
	FUNC3(ptr->info, AK452X_DVC_DEMOFF);
	}

	/* for the time being, init only first codec */
	if (ptr->num == 0)
	FUNC1(ptr->info);
}