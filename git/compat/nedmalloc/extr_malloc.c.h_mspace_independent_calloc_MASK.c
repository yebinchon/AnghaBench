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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void** FUNC1 (int /*<<< orphan*/ ,size_t,size_t*,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void** FUNC3(mspace msp, size_t n_elements,
				 size_t elem_size, void* chunks[]) {
  size_t sz = elem_size; /* serves as 1-element array */
  mstate ms = (mstate)msp;
  if (!FUNC2(ms)) {
    FUNC0(ms,ms);
    return 0;
  }
  return FUNC1(ms, n_elements, &sz, 3, chunks);
}