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
struct sockaddr_un {int dummy; } ;
typedef  int /*<<< orphan*/  ifsun ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_un*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_un*) ; 

__attribute__((used)) static void
FUNC4(int sock, const char *path)
{
    struct sockaddr_un ifsun;
    int e;

    FUNC2(&ifsun, path);

    e = FUNC0(sock, FUNC3(&ifsun), sizeof(ifsun));
    if (e < 0)
        FUNC1(1, "can't connect to a socket");
}