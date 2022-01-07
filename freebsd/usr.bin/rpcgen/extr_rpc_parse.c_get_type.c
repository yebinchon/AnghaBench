
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kind; char* str; } ;
typedef TYPE_1__ token ;
typedef int defkind ;


 int DEF_PROGRAM ;
 int DEF_UNION ;
 int error (char*) ;
 int get_token (TYPE_1__*) ;
 int peekscan (int,TYPE_1__*) ;
 int scan (int const,TYPE_1__*) ;
 int unsigned_dec (char const**) ;

__attribute__((used)) static void
get_type(const char **prefixp, const char **typep, defkind dkind)
{
 token tok;

 *prefixp = ((void*)0);
 get_token(&tok);
 switch (tok.kind) {
 case 138:
  *typep = tok.str;
  break;
 case 131:
 case 141:
 case 130:
  *prefixp = tok.str;
  scan(138, &tok);
  *typep = tok.str;
  break;
 case 129:
  unsigned_dec(typep);
  break;
 case 133:
  *typep = "short";
  (void) peekscan(137, &tok);
  break;
 case 136:
  *typep = "long";
  (void) peekscan(137, &tok);
  break;
 case 139:
  *typep = "int64_t";
  (void) peekscan(137, &tok);
  break;

 case 128:
  if (dkind != DEF_UNION && dkind != DEF_PROGRAM) {
   error("voids allowed only inside union and program definitions with one argument");
  }
  *typep = tok.str;
  break;
 case 132:
 case 135:
 case 143:
 case 137:
 case 140:
 case 142:
 case 144:
 case 134:
  *typep = tok.str;
  break;
 default:
  error("expected type specifier");
 }
}
