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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  const* efidp ;
typedef  int /*<<< orphan*/  const efi_char ;
typedef  int /*<<< orphan*/  attributes ;

/* Variables and functions */
 size_t BAD_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/  const**,size_t*) ; 

__attribute__((used)) static size_t
FUNC5(uint8_t *buf, size_t bufmax, uint32_t attributes, efidp dp, size_t dp_size,
    const char *description, const uint8_t *optional_data, size_t optional_data_size)
{
	efi_char *bbuf = NULL;
	uint8_t *pos = buf;
	size_t desc_len = 0;
	size_t len;

	if (optional_data == NULL && optional_data_size != 0)
		return BAD_LENGTH;
	if (dp == NULL && dp_size != 0)
		return BAD_LENGTH;

	/*
	 * Compute the length to make sure the passed in buffer is long enough.
	 */
	FUNC4(description, &bbuf, &desc_len);
	len = sizeof(uint32_t) + sizeof(uint16_t) + desc_len + dp_size + optional_data_size;
	if (len > bufmax) {
		FUNC0(bbuf);
		return BAD_LENGTH;
	}

	FUNC2(pos, attributes);
	pos += sizeof (attributes);

	FUNC1(pos, dp_size);
	pos += sizeof (uint16_t);

	FUNC3(pos, bbuf, desc_len);	/* NB:desc_len includes strailing NUL */
	pos += desc_len;
	FUNC0(bbuf);

	FUNC3(pos, dp, dp_size);
	pos += dp_size;

	if (optional_data && optional_data_size > 0) {
		FUNC3(pos, optional_data, optional_data_size);
		pos += optional_data_size;
	}

	return pos - buf;
}