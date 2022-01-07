
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ophdr {int dummy; } ;
struct gmonhdr {scalar_t__ lpc; scalar_t__ hpc; scalar_t__ ncnt; scalar_t__ version; int profrate; int histcounter_type; } ;
typedef int FILE ;


 int CHAR_BIT ;
 scalar_t__ GMONVERSION ;
 unsigned long HISTORICAL_SCALE_2 ;
 int SAMPLEDEBUG ;
 int SEEK_SET ;
 int abs (int) ;
 int debug ;
 int err (int,char*,char*) ;
 int errx (int,char*,char*,...) ;
 int * fopen (char*,char*) ;
 int fread (struct gmonhdr*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 struct gmonhdr gmonhdr ;
 int hertz () ;
 unsigned long highpc ;
 int histcounter_size ;
 int histcounter_type ;
 int hz ;
 unsigned long lowpc ;
 int nsamples ;
 int printf (char*,int,...) ;
 unsigned long s_highpc ;
 unsigned long s_lowpc ;
 int sampbytes ;

FILE *
openpfile(char *filename)
{
    struct gmonhdr tmp;
    FILE *pfile;
    int size;
    int rate;

    if((pfile = fopen(filename, "r")) == ((void*)0))
 err(1, "%s", filename);
    fread(&tmp, sizeof(struct gmonhdr), 1, pfile);
    if ( s_highpc != 0 && ( tmp.lpc != gmonhdr.lpc ||
  tmp.hpc != gmonhdr.hpc || tmp.ncnt != gmonhdr.ncnt ) )
 errx(1, "%s: incompatible with first gmon file", filename);
    gmonhdr = tmp;
    if ( gmonhdr.version == GMONVERSION ) {
 rate = gmonhdr.profrate;
 size = sizeof(struct gmonhdr);
    } else {
 fseek(pfile, sizeof(struct ophdr), SEEK_SET);
 size = sizeof(struct ophdr);
 gmonhdr.profrate = rate = hertz();
 gmonhdr.version = GMONVERSION;
    }
    if (hz == 0) {
 hz = rate;
    } else if (hz != rate)
 errx(0, "%s: profile clock rate (%d) %s (%ld) in first gmon file",
     filename, rate, "incompatible with clock rate", hz);
    if ( gmonhdr.histcounter_type == 0 ) {

 histcounter_type = 16;
 histcounter_size = 2;
    } else {
 histcounter_type = gmonhdr.histcounter_type;
 histcounter_size = abs(histcounter_type) / CHAR_BIT;
    }
    s_lowpc = (unsigned long) gmonhdr.lpc;
    s_highpc = (unsigned long) gmonhdr.hpc;
    lowpc = (unsigned long)gmonhdr.lpc / HISTORICAL_SCALE_2;
    highpc = (unsigned long)gmonhdr.hpc / HISTORICAL_SCALE_2;
    sampbytes = gmonhdr.ncnt - size;
    nsamples = sampbytes / histcounter_size;
    return(pfile);
}
