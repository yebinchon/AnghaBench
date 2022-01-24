#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* msg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* trap_data ; 

__attribute__((used)) static const char *
FUNC1(int trapno)
{
	const char *res;
	static const char unkn[] = "UNKNOWN";

	res = NULL;
	if (trapno < FUNC0(trap_data))
		res = trap_data[trapno].msg;
	if (res == NULL)
		res = unkn;
	return (res);
}