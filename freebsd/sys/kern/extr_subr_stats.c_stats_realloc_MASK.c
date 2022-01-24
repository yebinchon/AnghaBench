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
 void* FUNC0 (void*,size_t) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_STATS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (void*,char,size_t) ; 
 void* FUNC2 (void*,size_t,...) ; 

__attribute__((used)) static inline void *
FUNC3(void *ptr, size_t oldsz, size_t newsz, int flags)
{

#ifdef _KERNEL
	/* Default to M_NOWAIT if neither M_NOWAIT or M_WAITOK are set. */
	if (!(flags & (M_WAITOK | M_NOWAIT)))
		flags |= M_NOWAIT;
	ptr = realloc(ptr, newsz, M_STATS, flags);
#else /* ! _KERNEL */
	ptr = FUNC2(ptr, newsz);
	if ((flags & M_ZERO) && ptr != NULL) {
		if (oldsz == 0)
			FUNC1(ptr, '\0', newsz);
		else if (newsz > oldsz)
			FUNC1(FUNC0(ptr, oldsz), '\0', newsz - oldsz);
	}
#endif /* _KERNEL */

	return (ptr);
}