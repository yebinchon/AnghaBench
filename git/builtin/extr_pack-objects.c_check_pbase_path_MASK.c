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
 int /*<<< orphan*/  FUNC0 (unsigned int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned int*,int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int* done_pbase_paths ; 
 int /*<<< orphan*/  done_pbase_paths_alloc ; 
 int done_pbase_paths_num ; 

__attribute__((used)) static int FUNC3(unsigned hash)
{
	int pos = FUNC2(hash);
	if (0 <= pos)
		return 1;
	pos = -pos - 1;
	FUNC0(done_pbase_paths,
		   done_pbase_paths_num + 1,
		   done_pbase_paths_alloc);
	done_pbase_paths_num++;
	if (pos < done_pbase_paths_num)
		FUNC1(done_pbase_paths + pos + 1, done_pbase_paths + pos,
			   done_pbase_paths_num - pos - 1);
	done_pbase_paths[pos] = hash;
	return 0;
}