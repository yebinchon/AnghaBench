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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct mfi_config_data {int size; } ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_config_data*) ; 
 scalar_t__ FUNC1 (int,int,struct mfi_config_data*,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 struct mfi_config_data* FUNC2 (struct mfi_config_data*,int) ; 

int
FUNC3(int fd, uint32_t opcode, struct mfi_config_data **configp,
	uint8_t *mbox, size_t mboxlen)
{
	struct mfi_config_data *config;
	uint32_t config_size;
	int error;

	/*
	 * Keep fetching the config in a loop until we have a large enough
	 * buffer to hold the entire configuration.
	 */
	config = NULL;
	config_size = 1024;
fetch:
	config = FUNC2(config, config_size);
	if (config == NULL)
		return (-1);
	if (FUNC1(fd, opcode, config,
	    config_size, mbox, mboxlen, NULL) < 0) {
		error = errno;
		FUNC0(config);
		errno = error;
		return (-1);
	}

	if (config->size > config_size) {
		config_size = config->size;
		goto fetch;
	}

	*configp = config;
	return (0);
}