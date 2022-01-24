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
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,void*,size_t) ; 

ssize_t FUNC2(int fd, void *buf, size_t count, off_t offset)
{
        off_t current_offset;
        ssize_t rc;

        current_offset = FUNC0(fd, 0, SEEK_CUR);

        if (FUNC0(fd, offset, SEEK_SET) < 0)
                return -1;

        rc = FUNC1(fd, buf, count);

        if (current_offset != FUNC0(fd, current_offset, SEEK_SET))
                return -1;
        return rc;
}