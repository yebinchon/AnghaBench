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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(stderr, "usage: mfiutil [-de] [-u unit] <command> ...\n\n");
	FUNC1(stderr, "Commands include:\n");
	FUNC1(stderr, "    version\n");
	FUNC1(stderr, "    show adapter              - display controller information\n");
	FUNC1(stderr, "    show battery              - display battery information\n");
	FUNC1(stderr, "    show config               - display RAID configuration\n");
	FUNC1(stderr, "    show drives               - list physical drives\n");
	FUNC1(stderr, "    show events               - display event log\n");
	FUNC1(stderr, "    show firmware             - list firmware images\n");
	FUNC1(stderr, "    show foreign              - display detected foreign volumes\n");
	FUNC1(stderr, "    show logstate             - display event log sequence numbers\n");
	FUNC1(stderr, "    show volumes              - list logical volumes\n");
	FUNC1(stderr, "    show patrol               - display patrol read status\n");
	FUNC1(stderr, "    show progress             - display status of active operations\n");
	FUNC1(stderr, "    fail <drive>              - fail a physical drive\n");
	FUNC1(stderr, "    good <drive>              - set a failed/SYSPD drive as UNCONFIGURED\n");
	FUNC1(stderr, "    rebuild <drive>           - mark failed drive ready for rebuild\n");
	FUNC1(stderr, "    syspd <drive>             - set drive into use as SYSPD JBOD\n");
	FUNC1(stderr, "    drive progress <drive>    - display status of active operations\n");
	FUNC1(stderr, "    drive clear <drive> <start|stop> - clear a drive with all 0x00\n");
	FUNC1(stderr, "    start rebuild <drive>\n");
	FUNC1(stderr, "    abort rebuild <drive>\n");
	FUNC1(stderr, "    locate <drive> <on|off>   - toggle drive LED\n");
	FUNC1(stderr, "    cache <volume> [command [setting]]\n");
	FUNC1(stderr, "    name <volume> <name>\n");
	FUNC1(stderr, "    volume progress <volume>  - display status of active operations\n");
	FUNC1(stderr, "    clear                     - clear volume configuration\n");
	FUNC1(stderr, "    create <type> [-v] [-s stripe_size] <drive>[,<drive>[,...]] [<drive>[,<drive>[,...]]\n");
	FUNC1(stderr, "    delete <volume>\n");
	FUNC1(stderr, "    add <drive> [volume]      - add a hot spare\n");
	FUNC1(stderr, "    remove <drive>            - remove a hot spare\n");
	FUNC1(stderr, "    patrol <disable|auto|manual> [interval [start]]\n");
	FUNC1(stderr, "    start patrol              - start a patrol read\n");
	FUNC1(stderr, "    stop patrol               - stop a patrol read\n");
	FUNC1(stderr, "    foreign scan              - scan for foreign configurations\n");
	FUNC1(stderr, "    foreign clear [volume]    - clear foreign configurations (default all)\n");
	FUNC1(stderr, "    foreign diag [volume]     - diagnostic display foreign configurations (default all)\n");
	FUNC1(stderr, "    foreign preview [volume]  - preview foreign configurations (default all)\n");
	FUNC1(stderr, "    foreign import [volume]   - import foreign configurations (default all)\n");
	FUNC1(stderr, "    flash <firmware>\n");
	FUNC1(stderr, "    start learn               - start a BBU relearn\n");
	FUNC1(stderr, "    bbu <setting> <value>     - set BBU properties\n");
	FUNC1(stderr, "    ctrlprop rebuild [rate]   - get/set the volume rebuild rate\n");
	FUNC1(stderr, "    ctrlprop alarm [0/1]      - enable/disable controller alarms\n");
#ifdef DEBUG
	fprintf(stderr, "    debug                     - debug 'show config'\n");
	fprintf(stderr, "    dump                      - display 'saved' config\n");
#endif
	FUNC0(1);
}