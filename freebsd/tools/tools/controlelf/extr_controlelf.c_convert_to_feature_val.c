
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {int value; int alias; } ;


 TYPE_1__* featurelist ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;
 char* strsep (char**,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static bool
convert_to_feature_val(char *feature_str, u_int32_t *feature_val)
{
 char *feature;
 int i, len;
 u_int32_t input;
 char operation;

 input = 0;
 operation = *feature_str;
 feature_str++;
 len = nitems(featurelist);
 while ((feature = strsep(&feature_str, ",")) != ((void*)0)) {
  for (i = 0; i < len; ++i) {
   if (strcmp(featurelist[i].alias, feature) == 0) {
    input |= featurelist[i].value;
    break;
   }
  }
  if (i == len) {
   warnx("%s is not a valid feature", feature);
   return (0);
  }
 }

 if (operation == '+') {
  *feature_val |= input;
 } else if (operation == '=') {
  *feature_val = input;
 } else if (operation == '-') {
  *feature_val &= ~input;
 } else {
  warnx("'%c' not an operator - use '+', '-', '='",
      feature_str[0]);
  return (0);
 }
 return (1);
}
