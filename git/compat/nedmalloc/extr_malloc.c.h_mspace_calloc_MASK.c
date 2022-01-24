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
typedef  int /*<<< orphan*/  mstate ;
typedef  int /*<<< orphan*/  mspace ;

/* Variables and functions */
 size_t MAX_SIZE_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void* FUNC6(mspace msp, size_t n_elements, size_t elem_size) {
  void* mem;
  size_t req = 0;
  mstate ms = (mstate)msp;
  if (!FUNC5(ms)) {
    FUNC0(ms,ms);
    return 0;
  }
  if (n_elements != 0) {
    req = n_elements * elem_size;
    if (((n_elements | elem_size) & ~(size_t)0xffff) &&
	(req / n_elements != elem_size))
      req = MAX_SIZE_T; /* force downstream failure on overflow */
  }
  mem = FUNC2(ms, req);
  if (mem != 0 && FUNC1(FUNC3(mem)))
    FUNC4(mem, 0, req);
  return mem;
}