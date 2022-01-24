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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct bce_softc {int dummy; } ;

/* Variables and functions */
 int BCE_NVM_COMMAND_FIRST ; 
 int BCE_NVM_COMMAND_LAST ; 
 int /*<<< orphan*/  BCE_VERBOSE_NVRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bce_softc*) ; 
 int FUNC5 (struct bce_softc*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC8(struct bce_softc *sc, u32 offset, u8 *ret_buf,
	int buf_size)
{
	int rc = 0;
	u32 cmd_flags, offset32, len32, extra;

	FUNC0(BCE_VERBOSE_NVRAM);

	if (buf_size == 0)
		goto bce_nvram_read_exit;

	/* Request access to the flash interface. */
	if ((rc = FUNC2(sc)) != 0)
		goto bce_nvram_read_exit;

	/* Enable access to flash interface */
	FUNC4(sc);

	len32 = buf_size;
	offset32 = offset;
	extra = 0;

	cmd_flags = 0;

	if (offset32 & 3) {
		u8 buf[4];
		u32 pre_len;

		offset32 &= ~3;
		pre_len = 4 - (offset & 3);

		if (pre_len >= len32) {
			pre_len = len32;
			cmd_flags = BCE_NVM_COMMAND_FIRST | BCE_NVM_COMMAND_LAST;
		}
		else {
			cmd_flags = BCE_NVM_COMMAND_FIRST;
		}

		rc = FUNC5(sc, offset32, buf, cmd_flags);

		if (rc)
			return rc;

		FUNC7(ret_buf, buf + (offset & 3), pre_len);

		offset32 += 4;
		ret_buf += pre_len;
		len32 -= pre_len;
	}

	if (len32 & 3) {
		extra = 4 - (len32 & 3);
		len32 = (len32 + 4) & ~3;
	}

	if (len32 == 4) {
		u8 buf[4];

		if (cmd_flags)
			cmd_flags = BCE_NVM_COMMAND_LAST;
		else
			cmd_flags = BCE_NVM_COMMAND_FIRST |
				    BCE_NVM_COMMAND_LAST;

		rc = FUNC5(sc, offset32, buf, cmd_flags);

		FUNC7(ret_buf, buf, 4 - extra);
	}
	else if (len32 > 0) {
		u8 buf[4];

		/* Read the first word. */
		if (cmd_flags)
			cmd_flags = 0;
		else
			cmd_flags = BCE_NVM_COMMAND_FIRST;

		rc = FUNC5(sc, offset32, ret_buf, cmd_flags);

		/* Advance to the next dword. */
		offset32 += 4;
		ret_buf += 4;
		len32 -= 4;

		while (len32 > 4 && rc == 0) {
			rc = FUNC5(sc, offset32, ret_buf, 0);

			/* Advance to the next dword. */
			offset32 += 4;
			ret_buf += 4;
			len32 -= 4;
		}

		if (rc)
			goto bce_nvram_read_locked_exit;

		cmd_flags = BCE_NVM_COMMAND_LAST;
		rc = FUNC5(sc, offset32, buf, cmd_flags);

		FUNC7(ret_buf, buf, 4 - extra);
	}

bce_nvram_read_locked_exit:
	/* Disable access to flash interface and release the lock. */
	FUNC3(sc);
	FUNC6(sc);

bce_nvram_read_exit:
	FUNC1(BCE_VERBOSE_NVRAM);
	return rc;
}