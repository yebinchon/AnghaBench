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
struct file_reader {scalar_t__ file; scalar_t__ fname; scalar_t__ buffer; scalar_t__ fd; int /*<<< orphan*/  mmapsize; scalar_t__ mmapaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct file_reader*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ stdin ; 

__attribute__((used)) static void
FUNC5(struct file_reader *fr)
{

	if (fr) {
		if (fr->mmapaddr)
			FUNC3(fr->mmapaddr, fr->mmapsize);

		if (fr->fd)
			FUNC0(fr->fd);

		if (fr->buffer)
			FUNC4(fr->buffer);

		if (fr->file)
			if (fr->file != stdin)
				FUNC1(fr->file, fr->fname);

		if(fr->fname)
			FUNC4(fr->fname);

		FUNC2(fr, 0, sizeof(struct file_reader));
	}
}