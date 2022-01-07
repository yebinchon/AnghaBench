
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lineno; int synch_lineno; int name; } ;


 int active ;
 int fprintf (int ,char*,int ,int ) ;
 size_t ilevel ;
 TYPE_1__* infile ;

void
do_emit_synchline(void)
{
 fprintf(active, "#line %lu \"%s\"\n",
     infile[ilevel].lineno, infile[ilevel].name);
 infile[ilevel].synch_lineno = infile[ilevel].lineno;
}
