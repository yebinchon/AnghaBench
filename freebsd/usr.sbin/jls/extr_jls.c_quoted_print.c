
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRINT_QUOTED ;
 int asprintf (char**,char*,char*,...) ;
 int free (char*) ;
 scalar_t__ strchr (char*,char) ;
 int xo_emit (char*,...) ;

__attribute__((used)) static void
quoted_print(int pflags, char *name, char *value)
{
 int qc;
 char *p = value;
 char *param_name_value;


 if (!*p) {
  asprintf(&param_name_value, "{k:%s}{d:%s/\"\"}", name, name);
  xo_emit(param_name_value);
  free(param_name_value);
  return;
 }

 asprintf(&param_name_value, "{:%s/%%s}", name);




 qc = strchr(p, '\'') ? '"'
  : strchr(p, '"') ? '\''
  : strchr(p, ' ') || strchr(p, '\t') ? '"'
  : 0;

 if (qc && pflags & PRINT_QUOTED)
  xo_emit("{P:/%c}", qc);

 xo_emit(param_name_value, value);

 free(param_name_value);

 if (qc && pflags & PRINT_QUOTED)
  xo_emit("{P:/%c}", qc);
}
