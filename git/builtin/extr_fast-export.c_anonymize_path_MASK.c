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
struct strbuf {int dummy; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct hashmap*,void* (*) (void const*,size_t*),char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static void FUNC4(struct strbuf *out, const char *path,
			   struct hashmap *map,
			   void *(*generate)(const void *, size_t *))
{
	while (*path) {
		const char *end_of_component = FUNC3(path, '/');
		size_t len = end_of_component - path;
		const char *c = FUNC0(map, generate, path, &len);
		FUNC1(out, c, len);
		path = end_of_component;
		if (*path)
			FUNC2(out, *path++);
	}
}