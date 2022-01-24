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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct hostent {char* h_name; } ;
typedef  int /*<<< orphan*/  bp_whoami_res ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 struct hostent* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t
FUNC4(bp_whoami_res *resultp, struct sockaddr_in *raddr)
{
  struct hostent *he;

  he = FUNC0((char *)&raddr->sin_addr.s_addr,4,AF_INET);
  FUNC2("%s answered:\n", he ? he->h_name : FUNC1(raddr->sin_addr));
  FUNC3(resultp);
  FUNC2("\n");
  return(0);
}