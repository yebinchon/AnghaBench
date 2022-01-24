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
struct strbuf {int dummy; } ;
struct TYPE_4__ {int pack_fd; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ from_stdin ; 
 int /*<<< orphan*/  input_ctx ; 
 scalar_t__ input_fd ; 
 TYPE_2__ nothread_data ; 
 int FUNC2 (struct strbuf*,char*) ; 
 scalar_t__ FUNC3 (char const*,int,...) ; 
 int output_fd ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static const char *FUNC6(const char *pack_name)
{
	if (from_stdin) {
		input_fd = 0;
		if (!pack_name) {
			struct strbuf tmp_file = STRBUF_INIT;
			output_fd = FUNC2(&tmp_file,
						"pack/tmp_pack_XXXXXX");
			pack_name = FUNC4(&tmp_file, NULL);
		} else {
			output_fd = FUNC3(pack_name, O_CREAT|O_EXCL|O_RDWR, 0600);
			if (output_fd < 0)
				FUNC1(FUNC0("unable to create '%s'"), pack_name);
		}
		nothread_data.pack_fd = output_fd;
	} else {
		input_fd = FUNC3(pack_name, O_RDONLY);
		if (input_fd < 0)
			FUNC1(FUNC0("cannot open packfile '%s'"), pack_name);
		output_fd = -1;
		nothread_data.pack_fd = input_fd;
	}
	the_hash_algo->init_fn(&input_ctx);
	return pack_name;
}