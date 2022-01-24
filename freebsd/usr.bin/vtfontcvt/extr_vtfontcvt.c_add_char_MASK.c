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
struct glyph {int dummy; } ;

/* Variables and functions */
 unsigned int VFNT_MAP_BOLD ; 
 struct glyph* FUNC0 (int /*<<< orphan*/ *,unsigned int,int) ; 
 scalar_t__ FUNC1 (struct glyph*,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC2(unsigned curchar, unsigned map_idx, uint8_t *bytes, uint8_t *bytes_r)
{
	struct glyph *gl;

	/* Prevent adding two glyphs for 0xFFFD */
	if (curchar == 0xFFFD) {
		if (map_idx < VFNT_MAP_BOLD)
			gl = FUNC0(bytes, 0, 1);
	} else if (curchar >= 0x20) {
		gl = FUNC0(bytes, map_idx, 0);
		if (FUNC1(gl, curchar, map_idx) != 0)
			return (1);
		if (bytes_r != NULL) {
			gl = FUNC0(bytes_r, map_idx + 1, 0);
			if (FUNC1(gl, curchar, map_idx + 1) != 0)
				return (1);
		}
	}
	return (0);
}