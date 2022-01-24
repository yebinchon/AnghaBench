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
typedef  scalar_t__ uint32_t ;
struct fb_info {scalar_t__ fb_size; scalar_t__ fb_vbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static void
FUNC1(struct fb_info *sc, uint32_t o, uint32_t v)
{

	FUNC0((o < sc->fb_size), ("Offset %#08x out of fb size", o));
	*(uint32_t *)(sc->fb_vbase + o) = v;
}