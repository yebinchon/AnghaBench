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
struct tws_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tws_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tws_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{

    struct tws_softc *sc = FUNC1(dev);

    FUNC0(sc, "entry", 0, 0);

    FUNC3(sc);
    FUNC2(sc, 1);

    return (0);
}