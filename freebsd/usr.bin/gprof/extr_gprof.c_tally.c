
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rawarc {int raw_count; int raw_selfpc; int raw_frompc; } ;
struct TYPE_5__ {char* name; int ncall; } ;
typedef TYPE_1__ nltype ;


 int TALLYDEBUG ;
 int addarc (TYPE_1__*,TYPE_1__*,int ) ;
 int debug ;
 scalar_t__ kflag ;
 int kfromlist ;
 int ktolist ;
 TYPE_1__* nllookup (int ) ;
 scalar_t__ onlist (int ,char*) ;
 int printf (char*,char*,char*,int ) ;

void
tally(struct rawarc *rawp)
{
    nltype *parentp;
    nltype *childp;

    parentp = nllookup( rawp -> raw_frompc );
    childp = nllookup( rawp -> raw_selfpc );
    if ( parentp == 0 || childp == 0 )
 return;
    if ( kflag
  && onlist( kfromlist , parentp -> name )
  && onlist( ktolist , childp -> name ) ) {
 return;
    }
    childp -> ncall += rawp -> raw_count;






    addarc( parentp , childp , rawp -> raw_count );
}
