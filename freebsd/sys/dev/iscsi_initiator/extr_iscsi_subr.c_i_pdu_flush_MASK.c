#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pduq_t ;
struct TYPE_8__ {int /*<<< orphan*/  isc; } ;
typedef  TYPE_1__ isc_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

int
FUNC8(isc_session_t *sp)
{
     int	n = 0;
     pduq_t	*pq;

     FUNC0(8);
     while((pq = FUNC2(sp)) != NULL) {
	  FUNC6(sp->isc, pq);
	  n++;
     }
     while((pq = FUNC3(sp)) != NULL) {
	  FUNC6(sp->isc, pq);
	  n++;
     }
     while((pq = FUNC4(sp, -1)) != NULL) {
	  FUNC6(sp->isc, pq);
	  n++;
     }
     while((pq = FUNC1(sp)) != NULL) {
	  FUNC6(sp->isc, pq);
	  n++;
     }
     while((pq = FUNC5(sp)) != NULL) {
	  FUNC6(sp->isc, pq);
	  n++;
     }
     if(n != 0)
	  FUNC7("%d pdus recovered, should have been ZERO!", n);
     return n;
}