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
struct sc_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct sc_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
       struct sc_info *sc;

       sc = FUNC3(dev);

       if (FUNC1(sc) == -1) {
           FUNC0(dev, "unable to reinitialize the card\n");
           return ENXIO;
       }
       if (FUNC2(dev) == -1) {
               FUNC0(dev, "unable to reinitialize the mixer\n");
               return ENXIO;
       }
       return 0;
}