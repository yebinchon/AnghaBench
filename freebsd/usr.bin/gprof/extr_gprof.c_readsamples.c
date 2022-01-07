
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u_int8_t ;
typedef double u_int64_t ;
typedef double u_int32_t ;
typedef double u_int16_t ;
typedef int intmax_t ;
typedef double int8_t ;
typedef double int64_t ;
typedef double int32_t ;
typedef double int16_t ;
typedef int FILE ;


 scalar_t__ calloc (int,int) ;
 int err (int,char*,int) ;
 int errx (int,char*,int,...) ;
 scalar_t__ feof (int *) ;
 int fread (int *,int ,int,int *) ;
 int histcounter_size ;
 int histcounter_type ;
 int nsamples ;
 double* samples ;

void
readsamples(FILE *pfile)
{
    int i;
    intmax_t sample;

    if (samples == 0) {
 samples = (double *) calloc(nsamples, sizeof(double));
 if (samples == ((void*)0))
     errx(0, "no room for %d sample pc's", nsamples);
    }
    for (i = 0; i < nsamples; i++) {
 fread(&sample, histcounter_size, 1, pfile);
 if (feof(pfile))
  break;
 switch ( histcounter_type ) {
 case -8:
     samples[i] += *(int8_t *)&sample;
     break;
 case 8:
     samples[i] += *(u_int8_t *)&sample;
     break;
 case -16:
     samples[i] += *(int16_t *)&sample;
     break;
 case 16:
     samples[i] += *(u_int16_t *)&sample;
     break;
 case -32:
     samples[i] += *(int32_t *)&sample;
     break;
 case 32:
     samples[i] += *(u_int32_t *)&sample;
     break;
 case -64:
     samples[i] += *(int64_t *)&sample;
     break;
 case 64:
     samples[i] += *(u_int64_t *)&sample;
     break;
 default:
     err(1, "unsupported histogram counter type %d", histcounter_type);
 }
    }
    if (i != nsamples)
 errx(1, "unexpected EOF after reading %d/%d samples", --i , nsamples );
}
