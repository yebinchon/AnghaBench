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
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_B ; 
 int HN_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(char *buf, size_t buflen, U32 stripe)
{

	FUNC0(buf, buflen, stripe * 512, "", HN_AUTOSCALE,
	    HN_B | HN_NOSPACE);
}