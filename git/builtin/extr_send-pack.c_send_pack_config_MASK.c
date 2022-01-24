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
struct TYPE_2__ {int /*<<< orphan*/  push_cert; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_PACK_PUSH_CERT_ALWAYS ; 
 int /*<<< orphan*/  SEND_PACK_PUSH_CERT_IF_ASKED ; 
 int /*<<< orphan*/  SEND_PACK_PUSH_CERT_NEVER ; 
 TYPE_1__ args ; 
 int FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const**) ; 
 int FUNC2 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(const char *k, const char *v, void *cb)
{
	FUNC3(k, v, NULL);

	if (!FUNC6(k, "push.gpgsign")) {
		const char *value;
		if (!FUNC1("push.gpgsign", &value)) {
			switch (FUNC4(value)) {
			case 0:
				args.push_cert = SEND_PACK_PUSH_CERT_NEVER;
				break;
			case 1:
				args.push_cert = SEND_PACK_PUSH_CERT_ALWAYS;
				break;
			default:
				if (value && !FUNC5(value, "if-asked"))
					args.push_cert = SEND_PACK_PUSH_CERT_IF_ASKED;
				else
					return FUNC0("Invalid value for '%s'", k);
			}
		}
	}
	return FUNC2(k, v, cb);
}