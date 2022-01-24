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
struct mallinfo {int dummy; } ;
typedef  int /*<<< orphan*/  mstate ;
typedef  int /*<<< orphan*/  mspace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mallinfo FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

struct mallinfo FUNC3(mspace msp) {
  mstate ms = (mstate)msp;
  if (!FUNC2(ms)) {
    FUNC0(ms,ms);
  }
  return FUNC1(ms);
}