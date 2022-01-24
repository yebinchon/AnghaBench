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
struct thread_data {int /*<<< orphan*/  trm; scalar_t__ ppp; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sem_select ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timetogo ; 

__attribute__((used)) static void *
FUNC5(void *v)
{
    struct thread_data *td;
    fd_set f;
    int ret;

    td = (struct thread_data *)v;
    FUNC1(&f);
    FUNC0(td->ppp, &f);

    FUNC4(&sem_select);
    while (!timetogo)
        if ((ret = FUNC3(td->ppp + 1, &f, NULL, NULL, NULL)) > 0) {
            FUNC2(td->trm, SIGUSR1);
            FUNC4(&sem_select);
        }

    return NULL;
}