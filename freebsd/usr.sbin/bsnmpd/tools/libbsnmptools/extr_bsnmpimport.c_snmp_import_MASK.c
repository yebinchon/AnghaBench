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
struct snmp_toolinfo {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (struct snmp_toolinfo*) ; 
 int FUNC1 (struct snmp_toolinfo*,int*) ; 

__attribute__((used)) static int32_t
FUNC2(struct snmp_toolinfo *snmptoolctx)
{
	int i;
	int32_t tok;

	tok = FUNC0(snmptoolctx);

	do
		i = FUNC1(snmptoolctx, &tok);
	while (i > 0);

	return (i);
}