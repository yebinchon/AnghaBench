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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ (* socket_fun ) (int,struct sockaddr const*,int) ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(socket_fun f, int s, const struct sockaddr_in *name)
{

	FUNC0((s = FUNC2(AF_INET, SOCK_STREAM, 0)) >= 0);
	FUNC1(EAFNOSUPPORT,
	    f(s, (const struct sockaddr *)(name),
	        sizeof(struct sockaddr_in)) < 0);
}