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
struct physical {int fd; int /*<<< orphan*/  handler; } ;
struct execdevice {int fd_out; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct execdevice* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,void const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC2(struct physical *p, const void *v, size_t n)
{
  struct execdevice *dev = FUNC0(p->handler);
  int fd = dev->fd_out == -1 ? p->fd : dev->fd_out;

  return FUNC1(fd, v, n);
}