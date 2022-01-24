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
struct twe_softc {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TWE_PARAM_AEN ; 
 int /*<<< orphan*/  TWE_PARAM_AEN_UnitCode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct twe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twe_handle_aen ; 

__attribute__((used)) static int
FUNC2(struct twe_softc *sc)
{

    FUNC0(4);

    if ((FUNC1(sc, TWE_PARAM_AEN, TWE_PARAM_AEN_UnitCode, 2, twe_handle_aen)) == NULL)
	return(EIO);
    return(0);
}