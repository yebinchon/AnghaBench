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
struct gdt_softc {int dummy; } ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_CMD ; 
 scalar_t__ FUNC1 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdt_softc*) ; 

__attribute__((used)) static void     
FUNC3( struct cam_sim *sim )
{
    struct gdt_softc *gdt;

    gdt = (struct gdt_softc *)FUNC1( sim );
    FUNC0(GDT_D_CMD, ("iir_poll sim %p gdt %p\n", sim, gdt));
    FUNC2(gdt);
}