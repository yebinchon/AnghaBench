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
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct directory {unsigned int mode; int stage; TYPE_1__ oid; int /*<<< orphan*/  path; int /*<<< orphan*/  len; scalar_t__ baselen; struct directory* up; } ;
struct archiver_context {struct directory* bottom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 
 size_t FUNC2 (scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 struct directory* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,char*,int,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC6(const unsigned char *sha1,
		struct strbuf *base, const char *filename,
		unsigned mode, int stage, struct archiver_context *c)
{
	struct directory *d;
	size_t len = FUNC2(base->len, 1, FUNC3(filename), 1);
	d = FUNC4(FUNC1(sizeof(*d), len));
	d->up	   = c->bottom;
	d->baselen = base->len;
	d->mode	   = mode;
	d->stage   = stage;
	c->bottom  = d;
	d->len = FUNC5(d->path, len, "%.*s%s/", (int)base->len, base->buf, filename);
	FUNC0(d->oid.hash, sha1);
}