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
struct config_store_data {int baselen; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 

__attribute__((used)) static struct strbuf FUNC4(const char *key,
					  const struct config_store_data *store)
{
	const char *dot;
	int i;
	struct strbuf sb = STRBUF_INIT;

	dot = FUNC0(key, '.', store->baselen);
	if (dot) {
		FUNC2(&sb, "[%.*s \"", (int)(dot - key), key);
		for (i = dot - key + 1; i < store->baselen; i++) {
			if (key[i] == '"' || key[i] == '\\')
				FUNC1(&sb, '\\');
			FUNC1(&sb, key[i]);
		}
		FUNC3(&sb, "\"]\n");
	} else {
		FUNC2(&sb, "[%.*s]\n", store->baselen, key);
	}

	return sb;
}