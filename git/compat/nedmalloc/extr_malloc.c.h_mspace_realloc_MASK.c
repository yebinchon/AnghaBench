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
typedef  int /*<<< orphan*/  mchunkptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void* FUNC7(mspace msp, void* oldmem, size_t bytes) {
  if (oldmem == 0)
    return FUNC5(msp, bytes);
#ifdef REALLOC_ZERO_BYTES_FREES
  if (bytes == 0) {
    mspace_free(msp, oldmem);
    return 0;
  }
#endif /* REALLOC_ZERO_BYTES_FREES */
  else {
#if FOOTERS
    mchunkptr p  = mem2chunk(oldmem);
    mstate ms = get_mstate_for(p);
#else /* FOOTERS */
    mstate ms = (mstate)msp;
#endif /* FOOTERS */
    if (!FUNC6(ms)) {
      FUNC0(ms,ms);
      return 0;
    }
    return FUNC2(ms, oldmem, bytes);
  }
}