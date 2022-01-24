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
struct params {int packet_len; int /*<<< orphan*/  last; int /*<<< orphan*/  packet; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

void FUNC5(struct params *p)
{       
        int rc;

        rc = FUNC3(p->tx, p->packet, p->packet_len);
        if (rc == -1)
                FUNC0(1, "inject()");
        if (rc != p->packet_len) {
                FUNC4("Wrote %d/%d\n", rc, p->packet_len);
                FUNC1(1);
        }
        
        if (FUNC2(&p->last, NULL) == -1)
                FUNC0(1, "gettimeofday()");
}