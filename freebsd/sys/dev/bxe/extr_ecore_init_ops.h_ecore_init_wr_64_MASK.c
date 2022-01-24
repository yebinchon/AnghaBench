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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int FW_BUF_SIZE ; 
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct bxe_softc *sc, uint32_t addr,
			     const uint32_t *data, uint32_t len64)
{
	uint32_t buf_len32 = FW_BUF_SIZE/4;
	uint32_t len = len64*2;
	uint64_t data64 = 0;
	uint32_t i;

	/* 64 bit value is in a blob: first low DWORD, then high DWORD */
	data64 = FUNC1((*(data + 1)), (*data));

	len64 = FUNC3((uint32_t)(FW_BUF_SIZE/8), len64);
	for (i = 0; i < len64; i++) {
		uint64_t *pdata = ((uint64_t *)(FUNC0(sc))) + i;

		*pdata = data64;
	}

	for (i = 0; i < len; i += buf_len32) {
		uint32_t cur_len = FUNC3(buf_len32, len - i);

		FUNC2(sc, addr + i*4, cur_len);
	}
}