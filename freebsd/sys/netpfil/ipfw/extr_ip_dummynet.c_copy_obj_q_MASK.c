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
struct dn_id {scalar_t__ len; scalar_t__ type; } ;
struct dn_flow {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char const*,int,int,int) ; 
 scalar_t__ DN_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,int) ; 

__attribute__((used)) static int
FUNC3(char **start, char *end, void *_o, const char *msg, int i)
{
	struct dn_id *o = _o;
	int have = end - *start;
	int len = sizeof(struct dn_flow); /* see above comment */

	if (have < len || o->len == 0 || o->type != DN_QUEUE) {
		FUNC0("ERROR type %d %s %d have %d need %d",
			o->type, msg, i, have, len);
		return 1;
	}
	FUNC1("type %d %s %d len %d", o->type, msg, i, len);
	FUNC2(*start, _o, len);
	((struct dn_id*)(*start))->len = len;
	*start += len;
	return 0;
}