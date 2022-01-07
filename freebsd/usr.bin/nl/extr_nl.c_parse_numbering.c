
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int errorbuf ;
struct TYPE_2__ {int name; int expr; int type; } ;


 int EXIT_FAILURE ;
 int NL_TEXTMAX ;
 int REG_NEWLINE ;
 int REG_NOSUB ;
 int errx (int ,char*,int ,char const*,...) ;
 int number_all ;
 int number_none ;
 int number_nonempty ;
 int number_regex ;
 TYPE_1__* numbering_properties ;
 int regcomp (int *,char const*,int) ;
 int regerror (int,int *,char*,int) ;
 int regfree (int *) ;

__attribute__((used)) static void
parse_numbering(const char *argstr, int section)
{
 int error;
 char errorbuf[NL_TEXTMAX];

 switch (argstr[0]) {
 case 'a':
  numbering_properties[section].type = number_all;
  break;
 case 'n':
  numbering_properties[section].type = number_none;
  break;
 case 't':
  numbering_properties[section].type = number_nonempty;
  break;
 case 'p':

  if (numbering_properties[section].type == number_regex)
   regfree(&numbering_properties[section].expr);
  else
   numbering_properties[section].type = number_regex;


  if ((error = regcomp(&numbering_properties[section].expr,
      &argstr[1], REG_NEWLINE|REG_NOSUB)) != 0) {
   (void)regerror(error,
       &numbering_properties[section].expr,
       errorbuf, sizeof (errorbuf));
   errx(EXIT_FAILURE,
       "%s expr: %s -- %s",
       numbering_properties[section].name, errorbuf,
       &argstr[1]);
  }
  break;
 default:
  errx(EXIT_FAILURE,
      "illegal %s line numbering type -- %s",
      numbering_properties[section].name, argstr);
 }
}
