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
struct params {int /*<<< orphan*/  seq; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

void FUNC4(struct params *p, void *buf, int len)
{       
        int rc;
        
        rc = FUNC2(p->tx, buf, len);
        if (rc == -1)
                FUNC0(1, "inject()");
        if (rc != len) {
                FUNC3("injected %d/%d\n", rc, len);
                FUNC1(1);
        }
        p->seq++;
}