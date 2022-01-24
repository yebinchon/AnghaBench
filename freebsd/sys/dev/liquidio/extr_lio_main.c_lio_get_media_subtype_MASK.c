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
struct octeon_device {int subdevice_id; } ;

/* Variables and functions */
 int IFM_10G_SR ; 
 int IFM_25G_SR ; 
#define  LIO_CN2350_10G_SUBDEVICE 132 
#define  LIO_CN2350_10G_SUBDEVICE1 131 
#define  LIO_CN2350_25G_SUBDEVICE 130 
#define  LIO_CN2360_10G_SUBDEVICE 129 
#define  LIO_CN2360_25G_SUBDEVICE 128 

__attribute__((used)) static int
FUNC0(struct octeon_device *oct)
{

	switch(oct->subdevice_id) {
	case LIO_CN2350_10G_SUBDEVICE:
	case LIO_CN2350_10G_SUBDEVICE1:
	case LIO_CN2360_10G_SUBDEVICE:
		return (IFM_10G_SR);

	case LIO_CN2350_25G_SUBDEVICE:
	case LIO_CN2360_25G_SUBDEVICE:
		return (IFM_25G_SR);
	}

	return (IFM_10G_SR);
}