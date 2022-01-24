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
 scalar_t__ ABSENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1( bktr_ptr_t bktr) {
  if (FUNC0( bktr, 0xa0) != ABSENT) return 0xa0;
  if (FUNC0( bktr, 0xac) != ABSENT) return 0xac;
  if (FUNC0( bktr, 0xae) != ABSENT) return 0xae;
  return -1; /* no eeprom found */
}