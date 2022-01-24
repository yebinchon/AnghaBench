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
struct spicds_info {scalar_t__ type; int format; int dvc; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4524_DVC ; 
 int /*<<< orphan*/  AK4524_FORMAT ; 
 int /*<<< orphan*/  AK4524_RESET ; 
 int AK452X_RESET_RSAD ; 
 int AK452X_RESET_RSDA ; 
 scalar_t__ SPICDS_TYPE_WM8770 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spicds_info*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct spicds_info *codec)
{
	FUNC0(codec->lock);
	if (codec->type != SPICDS_TYPE_WM8770) {
		/* reset */
		FUNC2(codec, AK4524_RESET, 0);
		/* set parameter */
		FUNC2(codec, AK4524_FORMAT, codec->format);
		FUNC2(codec, AK4524_DVC, codec->dvc);
		/* free reset register */
		FUNC2(codec, AK4524_RESET,
		    AK452X_RESET_RSDA | AK452X_RESET_RSAD);
	} else {
		/* WM8770 reinit */
		/* AK4358 reinit */
		/* AK4381 reinit */
	}
	FUNC1(codec->lock);
}