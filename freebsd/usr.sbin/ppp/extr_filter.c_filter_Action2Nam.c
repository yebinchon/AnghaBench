
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int actname ;


 unsigned int A_NONE ;
 unsigned int MAXFILTERS ;
 int snprintf (char*,int,char*,unsigned int) ;

const char *
filter_Action2Nam(unsigned act)
{
  static const char * const actname[] = { "  none ", "permit ", "  deny " };
  static char buf[8];

  if (act < MAXFILTERS) {
    snprintf(buf, sizeof buf, "%6d ", act);
    return buf;
  } else if (act >= A_NONE && act < A_NONE + sizeof(actname)/sizeof(char *))
    return actname[act - A_NONE];
  else
    return "?????? ";
}
