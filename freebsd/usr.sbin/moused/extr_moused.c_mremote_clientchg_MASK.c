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
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  ad ;
struct TYPE_2__ {scalar_t__ rtype; int mremcfd; int /*<<< orphan*/  mremsfd; } ;

/* Variables and functions */
 scalar_t__ MOUSE_PROTO_X10MOUSEREM ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ rodent ; 

__attribute__((used)) static void
FUNC4(int add)
{
    struct sockaddr_un ad;
    socklen_t ad_len;
    int fd;

    if (rodent.rtype != MOUSE_PROTO_X10MOUSEREM)
	return;

    if (add) {
	/*  Accept client connection, if we don't already have one  */
	ad_len = sizeof(ad);
	fd = FUNC0(rodent.mremsfd, (struct sockaddr *) &ad, &ad_len);
	if (fd < 0)
	    FUNC3("failed accept on mouse remote socket");

	if (rodent.mremcfd < 0) {
	    rodent.mremcfd = fd;
	    FUNC2("remote client connect...accepted");
	}
	else {
	    FUNC1(fd);
	    FUNC2("another remote client connect...disconnected");
	}
    }
    else {
	/* Client disconnected */
	FUNC2("remote client disconnected");
	FUNC1(rodent.mremcfd);
	rodent.mremcfd = -1;
    }
}