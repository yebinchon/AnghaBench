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
struct prompt {scalar_t__ fd_in; } ;
struct fdescriptor {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/  const*) ; 
 struct prompt* FUNC1 (struct fdescriptor*) ; 

__attribute__((used)) static int
FUNC2(struct fdescriptor *d, const fd_set *fdset)
{
  struct prompt *p = FUNC1(d);
  return p->fd_in >= 0 && FUNC0(p->fd_in, fdset);
}