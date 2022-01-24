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
struct bhnd_chipid {int chip_type; int /*<<< orphan*/  chip_id; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  chip_name ;

/* Variables and functions */
 int BHND_CHIPID_MAX_NAMELEN ; 
#define  BHND_CHIPTYPE_BCMA 131 
#define  BHND_CHIPTYPE_BCMA_ALT 130 
#define  BHND_CHIPTYPE_SIBA 129 
#define  BHND_CHIPTYPE_UBUS 128 
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void
FUNC5(device_t dev, const struct bhnd_chipid *chip_id)
{
	const char	*bus_name;
	char		*desc;
	char		 chip_name[BHND_CHIPID_MAX_NAMELEN];

	/* Determine chip type's bus name */
	switch (chip_id->chip_type) {
	case BHND_CHIPTYPE_SIBA:
		bus_name = "SIBA bus";
		break;
	case BHND_CHIPTYPE_BCMA:
	case BHND_CHIPTYPE_BCMA_ALT:
		bus_name = "BCMA bus";
		break;
	case BHND_CHIPTYPE_UBUS:
		bus_name = "UBUS bus";
		break;
	default:
		bus_name = "Unknown Type";
		break;
	}

	/* Format chip name */
	FUNC1(chip_name, sizeof(chip_name),
	     chip_id->chip_id);

	/* Format and set device description */
	FUNC0(&desc, M_BHND, "%s %s", chip_name, bus_name);
	if (desc != NULL) {
		FUNC3(dev, desc);
		FUNC4(desc, M_BHND);
	} else {
		FUNC2(dev, bus_name);
	}
	
}