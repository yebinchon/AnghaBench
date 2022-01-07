
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAXCOUNT ;
 scalar_t__ cal_parse (int *,int *) ;
 scalar_t__ calloc (int,int) ;
 int closecal (int *) ;
 int event_print_all (int *) ;
 char** extradata ;
 int fclose (int *) ;
 int * opencalin () ;
 int * opencalout () ;

void
cal(void)
{
 FILE *fpin;
 FILE *fpout;
 int i;

 for (i = 0; i < MAXCOUNT; i++)
  extradata[i] = (char *)calloc(1, 20);


 if ((fpin = opencalin()) == ((void*)0))
  return;

 if ((fpout = opencalout()) == ((void*)0)) {
  fclose(fpin);
  return;
 }

 if (cal_parse(fpin, fpout))
  return;

 event_print_all(fpout);
 closecal(fpout);
}
