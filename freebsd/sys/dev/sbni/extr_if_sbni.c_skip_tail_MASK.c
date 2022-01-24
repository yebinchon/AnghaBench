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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct sbni_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ CRC32_REMAINDER ; 
 int /*<<< orphan*/  DAT ; 
 int /*<<< orphan*/  FUNC1 (struct sbni_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct sbni_softc *sc, u_int tail_len, u_int32_t crc)
{
	while (tail_len--)
		crc = FUNC0(FUNC1(sc, DAT), crc);

	return (crc == CRC32_REMAINDER);
}