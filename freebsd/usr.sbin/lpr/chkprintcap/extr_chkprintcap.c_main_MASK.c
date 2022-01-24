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
struct stat {int dummy; } ;
struct skiminfo {int fatalerr; int entries; } ;
struct printer {int /*<<< orphan*/  spool_dir; int /*<<< orphan*/  printer; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  _PATH_PRINTCAP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ errno ; 
 int FUNC1 (struct printer*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ FUNC4 (struct printer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct printer*) ; 
 int FUNC6 (struct printer*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct printer*,struct stat*) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int problems ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct skiminfo* FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct stat*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,...) ; 

int
FUNC15(int argc, char **argv)
{
	struct skiminfo *skres;
	char *pcap_fname;
	int c, error, makedirs, more, queuecnt, verbosity;
	struct printer myprinter, *pp;

	makedirs = 0;
	queuecnt = 0;
	verbosity = 0;
	pcap_fname = NULL;
	pp = &myprinter;

	while ((c = FUNC3(argc, argv, "df:v")) != -1) {
		switch (c) {
		case 'd':
			makedirs = 1;
			break;

		case 'f':
			pcap_fname = FUNC11(optarg);
			FUNC8(pcap_fname);
			break;

		case 'v':
			verbosity++;
			break;

		default:
			FUNC12();
		}
	}

	if (optind != argc)
		FUNC12();

	if (pcap_fname == NULL)
		pcap_fname = FUNC11(_PATH_PRINTCAP);

	/*
	 * Skim through the printcap file looking for simple user-mistakes
	 * which will produce the wrong result for the user, but which may
	 * be pretty hard for the user to notice.  Such user-mistakes will
	 * only generate warning messages.  The (fatal-) problem count will
	 * only be incremented if there is a system problem trying to read
	 * the printcap file.
	*/
	skres = FUNC9(pcap_fname, verbosity);
	if (skres == NULL) {
		problems = 1;
		goto main_ret;
	} else if (skres->fatalerr) {
		problems = skres->fatalerr;
		goto main_ret;
	}

	/*
	 * Now use the standard capability-db routines to check the values
	 * in each of the queues defined in the printcap file.
	*/
	more = FUNC1(pp, &error);
	if (FUNC4(pp, error) && more)
		goto next;

	while (more) {
		struct stat stab;

		queuecnt++;
		errno = 0;
		if (FUNC10(pp->spool_dir, &stab) < 0) {
			if (errno == ENOENT && makedirs) {
				FUNC5(pp);
			} else {
				problems++;
				FUNC13("%s: %s", pp->printer, pp->spool_dir);
			}
		} else {
			FUNC7(pp, &stab);
		}

		/* Make other queue-specific validity checks here... */

next:
		more = FUNC6(pp, &error);
		if (FUNC4(pp, error) && more)
			goto next;
	}

	FUNC0();

	if (queuecnt != skres->entries) {
		FUNC14("WARNING: found %d entries when skimming %s,",
		    skres->entries, pcap_fname);
		FUNC14("WARNING:  but only found %d queues to process!",
		    queuecnt);
	}

main_ret:
	FUNC2(pcap_fname);
	return (problems);
}