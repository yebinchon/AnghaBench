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
struct indir {struct indir* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MD ; 
 int /*<<< orphan*/  M_MDSECT ; 
 int /*<<< orphan*/  FUNC0 (struct indir*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct indir *ip)
{

	FUNC0(ip->array, M_MDSECT);
	FUNC0(ip, M_MD);
}