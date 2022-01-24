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
struct ophdr {int dummy; } ;
struct gmonhdr {scalar_t__ lpc; scalar_t__ hpc; scalar_t__ ncnt; scalar_t__ version; int profrate; int histcounter_type; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CHAR_BIT ; 
 scalar_t__ GMONVERSION ; 
 unsigned long HISTORICAL_SCALE_2 ; 
 int SAMPLEDEBUG ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmonhdr*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct gmonhdr gmonhdr ; 
 int FUNC6 () ; 
 unsigned long highpc ; 
 int histcounter_size ; 
 int histcounter_type ; 
 int hz ; 
 unsigned long lowpc ; 
 int nsamples ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 unsigned long s_highpc ; 
 unsigned long s_lowpc ; 
 int sampbytes ; 

FILE *
FUNC8(char *filename)
{
    struct gmonhdr	tmp;
    FILE		*pfile;
    int			size;
    int			rate;

    if((pfile = FUNC3(filename, "r")) == NULL)
	FUNC1(1, "%s", filename);
    FUNC4(&tmp, sizeof(struct gmonhdr), 1, pfile);
    if ( s_highpc != 0 && ( tmp.lpc != gmonhdr.lpc ||
	 tmp.hpc != gmonhdr.hpc || tmp.ncnt != gmonhdr.ncnt ) )
	FUNC2(1, "%s: incompatible with first gmon file", filename);
    gmonhdr = tmp;
    if ( gmonhdr.version == GMONVERSION ) {
	rate = gmonhdr.profrate;
	size = sizeof(struct gmonhdr);
    } else {
	FUNC5(pfile, sizeof(struct ophdr), SEEK_SET);
	size = sizeof(struct ophdr);
	gmonhdr.profrate = rate = FUNC6();
	gmonhdr.version = GMONVERSION;
    }
    if (hz == 0) {
	hz = rate;
    } else if (hz != rate)
	FUNC2(0, "%s: profile clock rate (%d) %s (%ld) in first gmon file",
	    filename, rate, "incompatible with clock rate", hz);
    if ( gmonhdr.histcounter_type == 0 ) {
	/* Historical case.  The type was u_short (2 bytes in practice). */
	histcounter_type = 16;
	histcounter_size = 2;
    } else {
	histcounter_type = gmonhdr.histcounter_type;
	histcounter_size = FUNC0(histcounter_type) / CHAR_BIT;
    }
    s_lowpc = (unsigned long) gmonhdr.lpc;
    s_highpc = (unsigned long) gmonhdr.hpc;
    lowpc = (unsigned long)gmonhdr.lpc / HISTORICAL_SCALE_2;
    highpc = (unsigned long)gmonhdr.hpc / HISTORICAL_SCALE_2;
    sampbytes = gmonhdr.ncnt - size;
    nsamples = sampbytes / histcounter_size;
#   ifdef DEBUG
	if ( debug & SAMPLEDEBUG ) {
	    printf( "[openpfile] hdr.lpc 0x%lx hdr.hpc 0x%lx hdr.ncnt %d\n",
		gmonhdr.lpc , gmonhdr.hpc , gmonhdr.ncnt );
	    printf( "[openpfile]   s_lowpc 0x%lx   s_highpc 0x%lx\n" ,
		s_lowpc , s_highpc );
	    printf( "[openpfile]     lowpc 0x%lx     highpc 0x%lx\n" ,
		lowpc , highpc );
	    printf( "[openpfile] sampbytes %d nsamples %d\n" ,
		sampbytes , nsamples );
	    printf( "[openpfile] sample rate %ld\n" , hz );
	}
#   endif /* DEBUG */
    return(pfile);
}