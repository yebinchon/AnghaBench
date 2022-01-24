#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sa_len; } ;
struct TYPE_4__ {TYPE_3__ sa; } ;
typedef  TYPE_1__ sockunion_t ;
typedef  int /*<<< orphan*/  optval ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEPORT ; 
 int FUNC0 (int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ doreuseport ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(sockunion_t *bsu)
{
	int	 error, optval, sock;

	sock = -1;

	sock = FUNC3(PF_INET, SOCK_DGRAM, IPPROTO_UDP);
	if (sock == -1) {
		FUNC4("socket");
		return (-1);
	}

	if (doreuseport) {
		optval = 1;
		if (FUNC2(sock, SOL_SOCKET, SO_REUSEPORT, &optval,
		    sizeof(optval)) < 0) {
			FUNC4("setsockopt SO_REUSEPORT");
			FUNC1(sock);
			return (-1);
		}
	}

	if (bsu != NULL) {
		error = FUNC0(sock, &bsu->sa, bsu->sa.sa_len);
		if (error == -1) {
			FUNC4("bind");
			FUNC1(sock);
			return (-1);
		}
	}

	return (sock);
}