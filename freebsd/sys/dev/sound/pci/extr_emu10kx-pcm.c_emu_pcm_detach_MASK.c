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
struct emu_pcm_info {scalar_t__ lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct emu_pcm_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct emu_pcm_info*,int /*<<< orphan*/ ) ; 
 struct emu_pcm_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int r;
	struct emu_pcm_info *sc;

	sc = FUNC2(dev);

	r = FUNC3(dev);

	if (r) 	return (r);

	FUNC0(sc);

	if (sc->lock)
		FUNC4(sc->lock);
	FUNC1(sc, M_DEVBUF);

	return (0);
}