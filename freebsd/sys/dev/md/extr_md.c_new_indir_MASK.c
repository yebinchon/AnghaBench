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
typedef  int /*<<< orphan*/  u_int ;
struct indir {int total; int /*<<< orphan*/  shift; int /*<<< orphan*/ * array; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MD ; 
 int /*<<< orphan*/  M_MDSECT ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NINDIR ; 
 int /*<<< orphan*/  FUNC0 (struct indir*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ md_malloc_wait ; 

__attribute__((used)) static struct indir *
FUNC2(u_int shift)
{
	struct indir *ip;

	ip = FUNC1(sizeof *ip, M_MD, (md_malloc_wait ? M_WAITOK : M_NOWAIT)
	    | M_ZERO);
	if (ip == NULL)
		return (NULL);
	ip->array = FUNC1(sizeof(uintptr_t) * NINDIR,
	    M_MDSECT, (md_malloc_wait ? M_WAITOK : M_NOWAIT) | M_ZERO);
	if (ip->array == NULL) {
		FUNC0(ip, M_MD);
		return (NULL);
	}
	ip->total = NINDIR;
	ip->shift = shift;
	return (ip);
}