#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
struct ucl_parser {int dummy; } ;
struct fingerprint {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 scalar_t__ UCL_OBJECT ; 
 struct fingerprint* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucl_parser*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucl_parser*) ; 
 int /*<<< orphan*/  FUNC6 (struct ucl_parser*) ; 
 TYPE_1__* FUNC7 (struct ucl_parser*) ; 
 struct ucl_parser* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fingerprint *
FUNC10(const char *dir, const char *filename)
{
	ucl_object_t *obj = NULL;
	struct ucl_parser *p = NULL;
	struct fingerprint *f;
	char path[MAXPATHLEN];

	f = NULL;

	FUNC1(path, MAXPATHLEN, "%s/%s", dir, filename);

	p = FUNC8(0);
	if (!FUNC4(p, path)) {
		FUNC9("%s: %s", path, FUNC6(p));
		FUNC5(p);
		return (NULL);
	}

	obj = FUNC7(p);

	if (obj->type == UCL_OBJECT)
		f = FUNC0(obj);

	if (f != NULL)
		f->name = FUNC2(filename);

	FUNC3(obj);
	FUNC5(p);

	return (f);
}