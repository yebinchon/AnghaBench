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
struct image {int /*<<< orphan*/  line_allocated; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct image*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct image *image)
{
	FUNC0(image->buf);
	FUNC0(image->line_allocated);
	FUNC1(image, 0, sizeof(*image));
}