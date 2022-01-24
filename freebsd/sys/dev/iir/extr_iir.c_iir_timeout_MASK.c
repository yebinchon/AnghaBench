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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_TIMEOUT ; 
 int /*<<< orphan*/  gccb ; 

__attribute__((used)) static void     
FUNC1(void *arg)
{
    FUNC0(GDT_D_TIMEOUT, ("iir_timeout(%p)\n", gccb));
}