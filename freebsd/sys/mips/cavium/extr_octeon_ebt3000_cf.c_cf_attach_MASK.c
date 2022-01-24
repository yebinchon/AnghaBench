#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cf_priv {int /*<<< orphan*/  cf_bq; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ board_type; } ;

/* Variables and functions */
 scalar_t__ CVMX_BOARD_TYPE_SIM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cf_attach_geom ; 
 int FUNC1 (struct cf_priv*) ; 
 TYPE_1__* FUNC2 () ; 
 struct cf_priv* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cf_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (device_t dev)
{
	struct cf_priv *cf_priv;
	int error;

    	if (FUNC2()->board_type == CVMX_BOARD_TYPE_SIM)
		return (ENXIO);

	cf_priv = FUNC3(dev);
	cf_priv->dev = dev;

	error = FUNC1(cf_priv);
	if (error != 0) {
		FUNC4(dev, "cf_cmd_identify failed: %d\n", error);
		return (error);
	}

	FUNC5(cf_attach_geom, cf_priv, M_WAITOK, NULL);
	FUNC0(&cf_priv->cf_bq);

        return 0;
}