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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_char ;
struct isa_config {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct isa_config*) ; 
 int MAXDEP ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
#define  PNP_TAG_END 130 
#define  PNP_TAG_END_DEPENDANT 129 
#define  PNP_TAG_START_DEPENDANT 128 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC5 (struct isa_config*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct isa_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct isa_config*,struct isa_config*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*,int,struct isa_config*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int,int*,int,struct isa_config*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC15(device_t dev, u_char *resources, int len, int ldn)
{
	struct isa_config *configs;
	struct isa_config *config;
	device_t parent;
	int priorities[1 + MAXDEP];
	u_char *start;
	u_char *p;
	u_char tag;
	u_int32_t id;
	int ncfgs;
	int l;
	int i;

	parent = FUNC6(dev);
	id = FUNC9(dev);

	configs = (struct isa_config *)FUNC10(sizeof(*configs)*(1 + MAXDEP),
					      M_DEVBUF, M_NOWAIT | M_ZERO);
	if (configs == NULL) {
		FUNC7(parent, "No memory to parse PNP data\n");
		return;
	}
	config = &configs[0];
	priorities[0] = 0;
	ncfgs = 1;

	p = resources;
	start = NULL;
	while (len > 0) {
		tag = *p++;
		len--;
		if (FUNC2(tag) == 0) {
			/* Small resource */
			l = FUNC3(tag);
			if (len < l) {
				len = 0;
				continue;
			}
			len -= l;

			switch (FUNC4(tag)) {

			case PNP_TAG_START_DEPENDANT:
				if (start != NULL) {
					/*
					 * Copy the common resources first,
					 * then parse the "dependent" resources.
					 */
					FUNC11(dev, &configs[0],
							    config);
					FUNC12(dev, start,
							    p - start - 1,
							    config, ldn);
				}
				start = p + l;
				if (ncfgs > MAXDEP) {
					FUNC7(parent, "too many dependent configs (%d)\n", MAXDEP);
					len = 0;
					break;
				}
				config = &configs[ncfgs];
				/*
				 * If the priority is not specified,
				 * then use the default of 'acceptable'
				 */
				if (l > 0)
					priorities[ncfgs] = p[0];
				else
					priorities[ncfgs] = 1;
				if (bootverbose)
					FUNC14(id, "start dependent (%d)\n",
						   priorities[ncfgs]);
				ncfgs++;
				break;

			case PNP_TAG_END_DEPENDANT:
				if (start == NULL) {
					FUNC7(parent,
						      "malformed resources\n");
					len = 0;
					break;
				}
				/*
				 * Copy the common resources first,
				 * then parse the "dependent" resources.
				 */
				FUNC11(dev, &configs[0], config);
				FUNC12(dev, start, p - start - 1,
						    config, ldn);
				start = NULL;
				if (bootverbose)
					FUNC14(id, "end dependent\n");
				/*
				 * Back to the common part; clear it
				 * as its contents has already been copied
				 * to each dependent.
				 */
				config = &configs[0];
				FUNC5(config, sizeof(*config));
				break;

			case PNP_TAG_END:
				if (start != NULL) {
					FUNC7(parent,
						      "malformed resources\n");
				}
				len = 0;
				break;

			default:
				if (start != NULL)
					/* defer parsing a dependent section */
					break;
				if (FUNC13(dev, tag, p, l, config, ldn))
					len = 0;
				break;
			}
			p += l;
		} else {
			/* Large resource */
			if (len < 2) {
				len = 0;
				break;
			}
			l = FUNC0(p);
			p += 2;
			len -= 2;
			if (len < l) {
				len = 0;
				break;
			}
			len -= l;
			if (start == NULL &&
			    FUNC13(dev, tag, p, l, config, ldn)) {
				len = 0;
				break;
			}
			p += l;
		}
	}

	if (ncfgs == 1) {
		/* Single config without dependants */
		FUNC1(parent, dev, priorities[0], &configs[0]);
		FUNC8(configs, M_DEVBUF);
		return;
	}

	for (i = 1; i < ncfgs; i++) {
		/*
		 * Merge the remaining part of the common resources,
		 * if any. Strictly speaking, there shouldn't be common/main
		 * resources after the END_DEPENDENT tag.
		 */
		FUNC11(dev, &configs[0], &configs[i]);
		FUNC1(parent, dev, priorities[i], &configs[i]);
	}

	FUNC8(configs, M_DEVBUF);
}