#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct octeon_device {int dummy; } ;
struct firmware {int /*<<< orphan*/  datasize; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {char* card_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 char* LIO_FW_BASE_NAME ; 
 int /*<<< orphan*/  LIO_FW_NAME_SUFFIX ; 
 char* LIO_FW_NAME_TYPE_NIC ; 
 int LIO_MAX_FW_FILENAME_LEN ; 
 struct firmware* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*,int /*<<< orphan*/ ) ; 
 char* fw_type ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,char*,char*) ; 
 int FUNC3 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct octeon_device *oct)
{
	const struct firmware	*fw;
	char	*tmp_fw_type = NULL;
	int	ret = 0;
	char	fw_name[LIO_MAX_FW_FILENAME_LEN];

	if (fw_type[0] == '\0')
		tmp_fw_type = LIO_FW_NAME_TYPE_NIC;
	else
		tmp_fw_type = fw_type;

	FUNC5(fw_name, "%s%s_%s%s", LIO_FW_BASE_NAME,
		FUNC4(oct)->card_name, tmp_fw_type, LIO_FW_NAME_SUFFIX);

	fw = FUNC0(fw_name);
	if (fw == NULL) {
		FUNC2(oct, "Request firmware failed. Could not find file %s.\n",
			    fw_name);
		return (EINVAL);
	}

	ret = FUNC3(oct, fw->data, fw->datasize);

	FUNC1(fw, FIRMWARE_UNLOAD);

	return (ret);
}