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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  pattern_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,size_t*,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,size_t,int) ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,size_t,size_t) ; 

__attribute__((used)) static void
FUNC5(pattern_t* p_pat, int chunk_idx, int thread_num)
{
  uint32_t chunk_start, chunk_end;
  FUNC1(p_pat, chunk_idx, &chunk_start, &chunk_end);
  size_t size =  chunk_end - chunk_start;
  uint64_t* buf = FUNC2(size);
  FUNC3(buf, chunk_start, size, thread_num);
  FUNC4(outfd, (void*)buf, size, chunk_start);
  FUNC0(buf);
}