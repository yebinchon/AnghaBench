
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int TAILQ_INIT (int *) ;
 int ah ;
 scalar_t__ dump_deviceids_pci () ;
 scalar_t__ dump_deviceids_pcmcia () ;
 scalar_t__ dump_deviceids_usb () ;
 int dump_regvals () ;
 int fprintf (int *,char*) ;
 int * ofp ;
 int rh ;
 int sh ;
 int * yyin ;
 int yyparse () ;

int
inf_parse (FILE *fp, FILE *outfp)
{
 TAILQ_INIT(&sh);
 TAILQ_INIT(&rh);
 TAILQ_INIT(&ah);

 ofp = outfp;
 yyin = fp;
 yyparse();

 if (dump_deviceids_pci() == 0 &&
     dump_deviceids_pcmcia() == 0 &&
     dump_deviceids_usb() == 0)
  return (-1);

 fprintf(outfp, "#ifdef NDIS_REGVALS\n");
 dump_regvals();
 fprintf(outfp, "#endif /* NDIS_REGVALS */\n");

 return (0);
}
