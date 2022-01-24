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
struct udpdevice {int connected; int /*<<< orphan*/  sock; } ;
struct sockaddr {int dummy; } ;
struct physical {int /*<<< orphan*/  fd; int /*<<< orphan*/  handler; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EISCONN ; 
#define  UDP_CONNECTED 129 
 int UDP_MAYBEUNCONNECTED ; 
#define  UDP_UNCONNECTED 128 
 struct udpdevice* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC3(struct physical *p, const void *v, size_t n)
{
  struct udpdevice *dev = FUNC0(p->handler);
  int ret;

  switch (dev->connected) {
    case UDP_CONNECTED:
      ret = FUNC2(p->fd, v, n);
      break;

    case UDP_UNCONNECTED:
    default:
      ret = FUNC1(p->fd, v, n, 0, (struct sockaddr *)&dev->sock,
                   sizeof dev->sock);
      break;
  }
  if (dev->connected == UDP_MAYBEUNCONNECTED) {
    if (ret == -1 && errno == EISCONN) {
      dev->connected = UDP_CONNECTED;
      ret = FUNC2(p->fd, v, n);
    } else
      dev->connected = UDP_UNCONNECTED;
  }

  return ret;
}