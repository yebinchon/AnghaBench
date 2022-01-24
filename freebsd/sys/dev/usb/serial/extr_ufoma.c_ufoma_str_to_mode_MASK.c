#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mode; int /*<<< orphan*/ * str; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* umcpc_modetostr_tab ; 

__attribute__((used)) static int FUNC1(char *str)
{
	int i;
	for(i = 0 ;umcpc_modetostr_tab[i].str != NULL; i++){
		if(FUNC0(str, umcpc_modetostr_tab[i].str)==0){
			return umcpc_modetostr_tab[i].mode;
		}
	}
	return -1;
}