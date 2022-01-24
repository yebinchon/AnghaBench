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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int UINT8 ;
typedef  int UINT64 ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int ACPI_PHYSICAL_ADDRESS ;

/* Variables and functions */
#define  ACPI_READ 129 
#define  ACPI_WRITE 128 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC0 (char*,int) ; 
 int FUNC1 (int,int,int*) ; 
 int FUNC2 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC4(
	UINT32			SpaceID,
	UINT32			Function,
	ACPI_PHYSICAL_ADDRESS	Address,
	UINT32			BitWidth,
	UINT64			*Value,
	int			Prompt)
{
	int			state;
	UINT8			val;
	UINT64			value, i;
	char			msg[256];
	static const char	*space_names[] = {
		"SYSTEM_MEMORY", "SYSTEM_IO", "PCI_CONFIG",
		"EC", "SMBUS", "CMOS", "PCI_BAR_TARGET"};

	switch (Function) {
	case ACPI_READ:
		value = 0;
		for (i = 0; (i * 8) < BitWidth; i++) {
			state = FUNC1(SpaceID,
							     Address + i, &val);
			if (state == -1) {
				return (AE_NO_MEMORY);
			}
			value |= val << (i * 8);
		}
		*Value = value;
		if (Prompt) {
			FUNC3(msg, "[read (%s, %2d, 0x%jx)]",
				space_names[SpaceID], BitWidth,
				(uintmax_t)Address);
			*Value = FUNC0(msg, value);
			if (*Value != value) {
				return(FUNC4(SpaceID,
						ACPI_WRITE,
						Address, BitWidth, Value, 0));
			}
		}
		break;

	case ACPI_WRITE:
		value = *Value;
		if (Prompt) {
			FUNC3(msg, "[write(%s, %2d, 0x%jx)]",
				space_names[SpaceID], BitWidth,
				(uintmax_t)Address);
			value = FUNC0(msg, *Value);
		}
		*Value = value;
		for (i = 0; (i * 8) < BitWidth; i++) {
			val = value & 0xff;
			state = FUNC2(SpaceID,
							      Address + i, &val);
			if (state == -1) {
				return (AE_NO_MEMORY);
			}
			value = value >> 8;
		}
	}

	return (AE_OK);
}