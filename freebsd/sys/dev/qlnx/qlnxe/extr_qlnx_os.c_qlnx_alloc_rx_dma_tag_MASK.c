#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rx_tag; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  MJUM9BYTES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(qlnx_host_t *ha)
{
        if (FUNC1(NULL,    /* parent */
                        1, 0,    /* alignment, bounds */
                        BUS_SPACE_MAXADDR,       /* lowaddr */
                        BUS_SPACE_MAXADDR,       /* highaddr */
                        NULL, NULL,      /* filter, filterarg */
                        MJUM9BYTES,     /* maxsize */
                        1,        /* nsegments */
                        MJUM9BYTES,        /* maxsegsize */
                        0,        /* flags */
                        NULL,    /* lockfunc */
                        NULL,    /* lockfuncarg */
                        &ha->rx_tag)) {

                FUNC0(ha, " rx_tag alloc failed\n");

                return (-1);
        }
	return (0);
}