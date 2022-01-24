#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fifolog_writer {scalar_t__ obuf; scalar_t__ obufsize; TYPE_2__* ff; } ;
struct TYPE_4__ {TYPE_1__* zs; } ;
struct TYPE_3__ {scalar_t__ next_out; scalar_t__ avail_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fifolog_writer const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIFOLOG_WRITER_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(const struct fifolog_writer *f)
{

	FUNC0(f, FIFOLOG_WRITER_MAGIC);
	FUNC1(f->ff->zs->next_out + f->ff->zs->avail_out == \
	    f->obuf + f->obufsize);
}