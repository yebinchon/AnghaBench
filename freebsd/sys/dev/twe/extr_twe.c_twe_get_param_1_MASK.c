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
typedef  int /*<<< orphan*/  u_int8_t ;
struct twe_softc {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef  TYPE_1__ TWE_Param ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct twe_softc*,int,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct twe_softc *sc, int table_id, int param_id, u_int8_t *result)
{
    TWE_Param	*param;

    if ((param = FUNC1(sc, table_id, param_id, 1, NULL)) == NULL)
	return(ENOENT);
    *result = *(u_int8_t *)param->data;
    FUNC0(param, M_DEVBUF);
    return(0);
}