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
struct sockaddr_un {int /*<<< orphan*/  sun_path; } ;
typedef  int /*<<< orphan*/  sock ;
typedef  int /*<<< orphan*/  ifsun ;

/* Variables and functions */
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_un*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_un*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(const char *path)
{
    struct sockaddr_un ifsun;
    int sock;

    FUNC2(&ifsun, path);

    FUNC6(ifsun.sun_path);

    sock = FUNC4(PF_LOCAL, SOCK_DGRAM, 0);
    if (sock == -1)
        FUNC1(1, "can't create socket");
    FUNC3(sock, SOL_SOCKET, SO_REUSEADDR, &sock, sizeof(sock));
    if (FUNC0(sock, FUNC5(&ifsun), sizeof(ifsun)) < 0)
        FUNC1(1, "can't bind to a socket");

    return sock;
}