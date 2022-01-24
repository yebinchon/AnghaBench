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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FW_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct bxe_softc *sc, uint32_t addr, int fill,
			    uint32_t len, uint8_t wb)
{
	uint32_t buf_len = (((len*4) > FW_BUF_SIZE) ? FW_BUF_SIZE : (len*4));
	uint32_t buf_len32 = buf_len/4;
	uint32_t i;

	FUNC0(FUNC1(sc), (uint8_t)fill, buf_len);

	for (i = 0; i < len; i += buf_len32) {
		uint32_t cur_len = FUNC3(buf_len32, len - i);

		FUNC2(sc, addr + i*4, cur_len, wb);
	}
}