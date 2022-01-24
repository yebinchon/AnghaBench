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

/* Variables and functions */
 int a_flag ; 
 int d_flag ; 
 int /*<<< orphan*/  everything ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* g_args ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,char* const*,char*) ; 
 void* l_args ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int m_flag ; 
 int o_flag ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int p_flag ; 
 int s_flag ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int t_flag ; 
 int u_flag ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int x_flag ; 

int
FUNC8(int argc, char * const argv[])
{
	int o;

	while ((o = FUNC3(argc, argv, "adg:l:mopstux")) != -1)
		switch (o) {
		case 'a':
			a_flag = 1;
			break;
		case 'd':
			everything = 0;
			d_flag = 1;
			break;
		case 'g':
			everything = 0;
			g_args = optarg;
			break;
		case 'l':
			everything = 0;
			l_args = optarg;
			break;
		case 'm':
			m_flag = 1;
			break;
		case 'o':
			o_flag = 1;
			break;
		case 'p':
			everything = 0;
			p_flag = 1;
			break;
		case 's':
			everything = 0;
			s_flag = 1;
			break;
		case 't':
			t_flag = 1;
			break;
		case 'u':
			everything = 0;
			u_flag = 1;
			break;
		case 'x':
			x_flag = 1;
			break;
		default:
			FUNC7();
		}

	argc -= optind;
	argv += optind;

	if (argc > 0)
		FUNC7();

	FUNC1();
	FUNC2();
	FUNC5();
	FUNC6();
	FUNC4();
	FUNC0(0);
}