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
 int C_opt ; 
 int L_opt ; 
 int Z1_opt ; 
 int a_opt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int c_opt ; 
 int /*<<< orphan*/  d_arg ; 
 int /*<<< orphan*/  exclude ; 
 int f_opt ; 
 int FUNC1 (int,char**,char*) ; 
 int j_opt ; 
 int n_opt ; 
 int o_opt ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int optreset ; 
 int p_opt ; 
 int q_opt ; 
 int t_opt ; 
 int u_opt ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int v_opt ; 
 char* y_str ; 
 int zipinfo_mode ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[])
{
	int opt;

	optreset = optind = 1;
	while ((opt = FUNC1(argc, argv, "aCcd:fjLlnopqtuvx:yZ1")) != -1)
		switch (opt) {
		case '1':
			Z1_opt = 1;
			break;
		case 'a':
			a_opt = 1;
			break;
		case 'C':
			C_opt = 1;
			break;
		case 'c':
			c_opt = 1;
			break;
		case 'd':
			d_arg = optarg;
			break;
		case 'f':
			f_opt = 1;
			break;
		case 'j':
			j_opt = 1;
			break;
		case 'L':
			L_opt = 1;
			break;
		case 'l':
			if (v_opt == 0)
				v_opt = 1;
			break;
		case 'n':
			n_opt = 1;
			break;
		case 'o':
			o_opt = 1;
			q_opt = 1;
			break;
		case 'p':
			p_opt = 1;
			break;
		case 'q':
			q_opt = 1;
			break;
		case 't':
			t_opt = 1;
			break;
		case 'u':
			u_opt = 1;
			break;
		case 'v':
			v_opt = 2;
			break;
		case 'x':
			FUNC0(&exclude, optarg);
			break;
		case 'y':
			y_str = "  ";
			break;
		case 'Z':
			zipinfo_mode = 1;
			break;
		default:
			FUNC2();
		}

	return (optind);
}