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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ad1816_info {int dummy; } ;
struct ad1816_chinfo {scalar_t__ dir; struct ad1816_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ad1816_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ad1816_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ad1816_info*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC4(kobj_t obj, void *data, u_int32_t speed)
{
	struct ad1816_chinfo *ch = data;
    	struct ad1816_info *ad1816 = ch->parent;

    	FUNC0(speed, 4000, 55200);
	FUNC1(ad1816);
    	FUNC3(ad1816, (ch->dir == PCMDIR_PLAY)? 2 : 3, speed);
	FUNC2(ad1816);
    	return speed;
}