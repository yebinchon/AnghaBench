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
struct file {int /*<<< orphan*/  fd; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FILE_MMAP ; 
 int /*<<< orphan*/  MAXBUFSIZ ; 
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  bufpos ; 
 scalar_t__ bufrem ; 
 scalar_t__ filebehave ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC1(struct file *f)
{
	ssize_t nr;

	if (filebehave == FILE_MMAP)
		return (0);

	bufpos = buffer;
	bufrem = 0;

	nr = FUNC0(f->fd, buffer, MAXBUFSIZ);
	if (nr < 0)
		return (-1);

	bufrem = nr;
	return (0);
}