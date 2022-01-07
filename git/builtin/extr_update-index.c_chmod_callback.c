
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int error (char*) ;

__attribute__((used)) static int chmod_callback(const struct option *opt,
    const char *arg, int unset)
{
 char *flip = opt->value;
 BUG_ON_OPT_NEG(unset);
 if ((arg[0] != '-' && arg[0] != '+') || arg[1] != 'x' || arg[2])
  return error("option 'chmod' expects \"+x\" or \"-x\"");
 *flip = arg[0];
 return 0;
}
