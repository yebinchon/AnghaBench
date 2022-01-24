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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIP_STORAGE_IDE_MASTERDEV ; 
 int PCIP_STORAGE_IDE_MODEPRIM ; 
 int PCIP_STORAGE_IDE_MODESEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCIR_PROGIF ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int PCIS_STORAGE_IDE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC2(device_t dev)
{
    return (((FUNC1(dev, PCIR_SUBCLASS, 1) == PCIS_STORAGE_IDE) &&
	     (FUNC1(dev, PCIR_PROGIF, 1)&PCIP_STORAGE_IDE_MASTERDEV)&&
	     ((FUNC1(dev, PCIR_PROGIF, 1) &
	       (PCIP_STORAGE_IDE_MODEPRIM | PCIP_STORAGE_IDE_MODESEC)) !=
	      (PCIP_STORAGE_IDE_MODEPRIM | PCIP_STORAGE_IDE_MODESEC))) ||
	    (!FUNC1(dev, FUNC0(0), 4) &&
	     !FUNC1(dev, FUNC0(1), 4) &&
	     !FUNC1(dev, FUNC0(2), 4) &&
	     !FUNC1(dev, FUNC0(3), 4) &&
	     !FUNC1(dev, FUNC0(5), 4)));
}