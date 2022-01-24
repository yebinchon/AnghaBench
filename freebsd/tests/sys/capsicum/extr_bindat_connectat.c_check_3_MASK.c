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
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  ENOTCAPABLE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(socket_fun f, int s, const struct sockaddr_in *name,
    cap_rights_t *rights, cap_rights_t *sub_rights)
{

	FUNC0((s = FUNC4(AF_INET, SOCK_STREAM, 0)) >= 0);
	FUNC0(FUNC2(s, rights) >= 0);
	FUNC1(EAFNOSUPPORT,
	    f(s, (const struct sockaddr *)name,
	        sizeof(struct sockaddr_in)) < 0);
	FUNC0(FUNC2(s,
	                FUNC3(rights, sub_rights)) >= 0);
	FUNC1(ENOTCAPABLE,
	    f(s, (const struct sockaddr *)name,
	        sizeof(struct sockaddr_in)) < 0);
}