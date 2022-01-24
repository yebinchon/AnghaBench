#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dev; void* enable_hwlro; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int oce_max_rsp_handled ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int oce_rq_buf_size ; 
 void* FUNC3 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4( POCE_SOFTC sc )
{
	char *value = NULL;
	int rc = 0;

        /* read if user wants to enable hwlro or swlro */
        //value = getenv("oce_enable_hwlro");
        if(value && FUNC0(sc)) {
                sc->enable_hwlro = FUNC3(value, NULL, 10);
                if(sc->enable_hwlro) {
                        rc = FUNC2(sc, NULL, NULL);
                        if(rc) {
                                FUNC1(sc->dev, "no hardware lro support\n");
                		FUNC1(sc->dev, "software lro enabled\n");
                                sc->enable_hwlro = 0;
                        }else {
                                FUNC1(sc->dev, "hardware lro enabled\n");
				oce_max_rsp_handled = 32;
                        }
                }else {
                        FUNC1(sc->dev, "software lro enabled\n");
                }
        }else {
                sc->enable_hwlro = 0;
        }

        /* read mbuf size */
        //value = getenv("oce_rq_buf_size");
        if(value && FUNC0(sc)) {
                oce_rq_buf_size = FUNC3(value, NULL, 10);
                switch(oce_rq_buf_size) {
                case 2048:
                case 4096:
                case 9216:
                case 16384:
                        break;

                default:
                        FUNC1(sc->dev, " Supported oce_rq_buf_size values are 2K, 4K, 9K, 16K \n");
                        oce_rq_buf_size = 2048;
                }
        }

	return;
}