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
struct scsi_tape_errors {int io_resid; int* io_cdb; int* io_sense; int ctl_resid; int* ctl_cdb; int* ctl_sense; } ;
union mterrstat {struct scsi_tape_errors scsi_errstat; } ;
typedef  int u_int32_t ;
struct mtrblim {int mt_op; int mt_count; int min_block_length; int max_block_length; int granularity; } ;
struct mtop {int mt_op; int mt_count; int min_block_length; int max_block_length; int granularity; } ;
struct mtget {int mt_op; int mt_count; int min_block_length; int max_block_length; int granularity; } ;
struct commands {int c_flags; int c_code; int /*<<< orphan*/ * c_name; scalar_t__ c_ronly; } ;
typedef  int /*<<< orphan*/  rblim ;
typedef  int /*<<< orphan*/  mt_com ;
typedef  struct mtrblim* caddr_t ;

/* Variables and functions */
 char* DEFTAPE ; 
 int DISABLE_THIS ; 
 int IS_COMP ; 
 int IS_DENSITY ; 
#define  MTIOCERRSTAT 140 
#define  MTIOCEXTGET 139 
#define  MTIOCEXTLOCATE 138 
 int const MTIOCGET ; 
#define  MTIOCGETEOTMODEL 137 
#define  MTIOCHLOCATE 136 
#define  MTIOCPARAMGET 135 
#define  MTIOCRBLIM 134 
#define  MTIOCRDHPOS 133 
#define  MTIOCRDSPOS 132 
#define  MTIOCSETEOTMODEL 131 
#define  MTIOCSLOCATE 130 
 int const MTIOCTOP ; 
 int MTNOP ; 
#define  MT_CMD_GETDENSITY 129 
#define  MT_CMD_PROTECT 128 
 char* FUNC0 (int) ; 
 int NEED_2ARGS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int USE_GETOPT ; 
 int ZERO_ALLOWED ; 
 int /*<<< orphan*/  FUNC1 (struct mtrblim*,int) ; 
 struct commands* com ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (int,char**,char*) ; 
 scalar_t__ FUNC8 (int,int const,struct mtrblim*) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (int,char**,int,char const*) ; 
 int FUNC12 (int const,int,char**,int,char const*) ; 
 int FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct mtrblim*) ; 
 scalar_t__ FUNC16 (char const*,char*) ; 
 int FUNC17 (char*) ; 
 int FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC20 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 

int
FUNC23(int argc, char *argv[])
{
	const struct commands *comp;
	struct mtget mt_status;
	struct mtop mt_com;
	int ch, len, mtfd;
	const char *p, *tape;

	FUNC1(&mt_com, sizeof(mt_com));
	
	if ((tape = FUNC6("TAPE")) == NULL)
		tape = DEFTAPE;

	while ((ch = FUNC7(argc, argv, "f:t:")) != -1)
		switch(ch) {
		case 'f':
		case 't':
			tape = optarg;
			break;
		case '?':
			FUNC21();
			break;
		default:
			break;
		}
	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC21();

	len = FUNC18(p = *argv++);
	for (comp = com;; comp++) {
		if (comp->c_name == NULL)
			FUNC4(1, "%s: unknown command", p);
		if (FUNC19(p, comp->c_name, len) == 0)
			break;
	}
	if((comp->c_flags & NEED_2ARGS) && argc != 2)
		FUNC21();
	if(comp->c_flags & DISABLE_THIS) {
		FUNC22();
	}
	if (comp->c_flags & USE_GETOPT) {
		argc--;
		optind = 0;
	}

	if ((mtfd = FUNC13(tape, comp->c_ronly ? O_RDONLY : O_RDWR)) < 0)
		FUNC3(1, "%s", tape);
	if (comp->c_code != MTNOP) {
		mt_com.mt_op = comp->c_code;
		if (*argv) {
			if (!FUNC9(**argv) &&
			    (comp->c_flags & IS_DENSITY)) {
				const char *dcanon;
				mt_com.mt_count = FUNC10(*argv);
				if (mt_com.mt_count == 0)
					FUNC4(1, "%s: unknown density", *argv);
				dcanon = FUNC2(mt_com.mt_count);
				if (FUNC16(dcanon, *argv) != 0)
					FUNC14(
					"Using \"%s\" as an alias for %s\n",
					       *argv, dcanon);
				p = "";
			} else if (!FUNC9(**argv) &&
				   (comp->c_flags & IS_COMP)) {

				mt_com.mt_count = FUNC17(*argv);
				if ((u_int32_t)mt_com.mt_count == 0xf0f0f0f0)
					FUNC4(1, "%s: unknown compression",
					     *argv);
				p = "";
			} else if ((comp->c_flags & USE_GETOPT) == 0) {
				char *q;
				/* allow for hex numbers; useful for density */
				mt_com.mt_count = FUNC20(*argv, &q, 0);
				p = q;
			}
			if (((comp->c_flags & USE_GETOPT) == 0)
			 && (((mt_com.mt_count <=
			     ((comp->c_flags & ZERO_ALLOWED)? -1: 0))
			   && ((comp->c_flags & IS_COMP) == 0))
			  || *p))
				FUNC4(1, "%s: illegal count", *argv);
		}
		else
			mt_com.mt_count = 1;
		switch (comp->c_code) {
		case MTIOCERRSTAT:
		{
			unsigned int i;
			union mterrstat umn;
			struct scsi_tape_errors *s = &umn.scsi_errstat;

			if (FUNC8(mtfd, comp->c_code, (caddr_t)&umn) < 0)
				FUNC3(2, "%s", tape);
			(void)FUNC14("Last I/O Residual: %u\n", s->io_resid);
			(void)FUNC14(" Last I/O Command:");
			for (i = 0; i < sizeof (s->io_cdb); i++)
				(void)FUNC14(" %02X", s->io_cdb[i]);
			(void)FUNC14("\n");
			(void)FUNC14("   Last I/O Sense:\n\n\t");
			for (i = 0; i < sizeof (s->io_sense); i++) {
				(void)FUNC14(" %02X", s->io_sense[i]);
				if (((i + 1) & 0xf) == 0) {
					(void)FUNC14("\n\t");
				}
			}
			(void)FUNC14("\n");
			(void)FUNC14("Last Control Residual: %u\n",
			    s->ctl_resid);
			(void)FUNC14(" Last Control Command:");
			for (i = 0; i < sizeof (s->ctl_cdb); i++)
				(void)FUNC14(" %02X", s->ctl_cdb[i]);
			(void)FUNC14("\n");
			(void)FUNC14("   Last Control Sense:\n\n\t");
			for (i = 0; i < sizeof (s->ctl_sense); i++) {
				(void)FUNC14(" %02X", s->ctl_sense[i]);
				if (((i + 1) & 0xf) == 0) {
					(void)FUNC14("\n\t");
				}
			}
			(void)FUNC14("\n\n");
			FUNC5(0);
			/* NOTREACHED */
		}
		case MTIOCRDHPOS:
		case MTIOCRDSPOS:
		{
			u_int32_t block;
			if (FUNC8(mtfd, comp->c_code, (caddr_t)&block) < 0)
				FUNC3(2, "%s", tape);
			(void)FUNC14("%s: %s block location %u\n", tape,
			    (comp->c_code == MTIOCRDHPOS)? "hardware" :
			    "logical", block);
			FUNC5(0);
			/* NOTREACHED */
		}
		case MTIOCSLOCATE:
		case MTIOCHLOCATE:
		{
			u_int32_t block = (u_int32_t)mt_com.mt_count;
			if (FUNC8(mtfd, comp->c_code, (caddr_t)&block) < 0)
				FUNC3(2, "%s", tape);
			FUNC5(0);
			/* NOTREACHED */
		}
		case MTIOCGETEOTMODEL:
		{
			u_int32_t om;
			if (FUNC8(mtfd, MTIOCGETEOTMODEL, (caddr_t)&om) < 0)
				FUNC3(2, "%s", tape);
			(void)FUNC14("%s: the model is %u filemar%s at EOT\n",
			    tape, om, (om > 1)? "ks" : "k");
			FUNC5(0);
			/* NOTREACHED */
		}
		case MTIOCSETEOTMODEL:
		{
			u_int32_t om, nm = (u_int32_t)mt_com.mt_count;
			if (FUNC8(mtfd, MTIOCGETEOTMODEL, (caddr_t)&om) < 0)
				FUNC3(2, "%s", tape);
			if (FUNC8(mtfd, comp->c_code, (caddr_t)&nm) < 0)
				FUNC3(2, "%s", tape);
			(void)FUNC14("%s: old model was %u filemar%s at EOT\n",
			    tape, om, (om > 1)? "ks" : "k");
			(void)FUNC14("%s: new model  is %u filemar%s at EOT\n",
			    tape, nm, (nm > 1)? "ks" : "k");
			FUNC5(0);
			/* NOTREACHED */
		}
		case MTIOCRBLIM:
		{
			struct mtrblim rblim;

			FUNC1(&rblim, sizeof(rblim));

			if (FUNC8(mtfd, MTIOCRBLIM, (caddr_t)&rblim) < 0)
				FUNC3(2, "%s", tape);
			(void)FUNC14("%s:\n"
			    "    min blocksize %u byte%s\n"
			    "    max blocksize %u byte%s\n"
			    "    granularity %u byte%s\n",
			    tape, rblim.min_block_length,
			    FUNC0(rblim.min_block_length),
			    rblim.max_block_length,
			    FUNC0(rblim.max_block_length),
			    (1 << rblim.granularity),
			    FUNC0((1 << rblim.granularity)));
			FUNC5(0);
			/* NOTREACHED */
		}
		case MTIOCPARAMGET:
		case MTIOCEXTGET:
		case MT_CMD_PROTECT:
		case MT_CMD_GETDENSITY:
		{
			int retval = 0;

			retval = FUNC12(comp->c_code, argc, argv, mtfd,
			    tape);

			FUNC5(retval);
		}
		case MTIOCEXTLOCATE:
		{
			int retval = 0;

			retval = FUNC11(argc, argv, mtfd, tape);

			FUNC5(retval);
		}
		default:
			break;
		}
		if (FUNC8(mtfd, MTIOCTOP, &mt_com) < 0)
			FUNC3(1, "%s: %s", tape, comp->c_name);
	} else {
		if (FUNC8(mtfd, MTIOCGET, &mt_status) < 0)
			FUNC3(1, NULL);
		FUNC15(&mt_status);
	}
	FUNC5(0);
	/* NOTREACHED */
}