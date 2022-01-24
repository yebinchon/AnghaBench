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
struct kevent {int dummy; } ;

/* Variables and functions */
 struct kevent* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *) ; 

struct kevent *
FUNC3(int kqfd)
{
    int nfds;
    struct kevent *kev;

    if ((kev = FUNC0(1, sizeof(*kev))) == NULL)
        FUNC1(1, "out of memory");
    
    nfds = FUNC2(kqfd, NULL, 0, kev, 1, NULL);
    if (nfds < 1)
        FUNC1(1, "kevent(2)");

    return (kev);
}