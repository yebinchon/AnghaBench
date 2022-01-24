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
struct sc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODEC_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sc_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC2(struct sc_info *sc)
{
	int i;

	for (i=0 ; i<20 ; i++) {
		if ((FUNC1(sc, CODEC_STATUS) & 1) == 0) {
			return 0;
		}
		FUNC0(2);
	}
	return -1;
}