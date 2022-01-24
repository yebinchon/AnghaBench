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
typedef  int /*<<< orphan*/  bktr_ptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALI1ADDR ; 
 int /*<<< orphan*/  ALI2ADDR ; 
 int /*<<< orphan*/  ALI3ADDR ; 
 int /*<<< orphan*/  CON1ADDR ; 
 int /*<<< orphan*/  CON2ADDR ; 
 int /*<<< orphan*/  CON3ADDR ; 
 int /*<<< orphan*/  CON4ADDR ; 
 int /*<<< orphan*/  TDA9850_WADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void 
FUNC1( bktr_ptr_t bktr )
{
    FUNC0(bktr, TDA9850_WADDR, CON1ADDR, 0x08); /* noise threshold st */
    FUNC0(bktr, TDA9850_WADDR, CON2ADDR, 0x08); /* noise threshold sap */
    FUNC0(bktr, TDA9850_WADDR, CON3ADDR, 0x40); /* stereo mode */
    FUNC0(bktr, TDA9850_WADDR, CON4ADDR, 0x07); /* 0 dB input gain? */
    FUNC0(bktr, TDA9850_WADDR, ALI1ADDR, 0x10); /* wideband alignment? */
    FUNC0(bktr, TDA9850_WADDR, ALI2ADDR, 0x10); /* spectral alignment? */
    FUNC0(bktr, TDA9850_WADDR, ALI3ADDR, 0x03);
}