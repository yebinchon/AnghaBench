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
struct bwstring {size_t len; } ;

/* Variables and functions */
 int MB_CUR_MAX ; 
 size_t FUNC0 (size_t) ; 

size_t
FUNC1(const struct bwstring *bws)
{

	return ((MB_CUR_MAX == 1) ? (bws->len + 2 + sizeof(struct bwstring)) :
	    (FUNC0(bws->len + 1) + sizeof(struct bwstring)));
}