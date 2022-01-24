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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct udl_softc {int dummy; } ;
struct udl_cmd_buf {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int UDL_BULK_CMD_FB_WORD ; 
 int UDL_BULK_CMD_FB_WRITE ; 
 int UDL_BULK_SOC ; 
 struct udl_cmd_buf* FUNC0 (struct udl_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct udl_softc*,struct udl_cmd_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct udl_cmd_buf*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct udl_cmd_buf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct udl_cmd_buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct udl_softc *sc, const uint8_t *buf, uint32_t off,
    uint8_t pixels, int flags)
{
	struct udl_cmd_buf *cb;

	cb = FUNC0(sc, flags);
	if (cb == NULL)
		return (EAGAIN);

	FUNC3(cb, UDL_BULK_SOC);
	FUNC3(cb, UDL_BULK_CMD_FB_WRITE | UDL_BULK_CMD_FB_WORD);
	FUNC4(cb, off);
	FUNC3(cb, pixels);
	FUNC2(cb, buf, 2 * pixels);
	FUNC1(sc, cb);

	return (0);
}