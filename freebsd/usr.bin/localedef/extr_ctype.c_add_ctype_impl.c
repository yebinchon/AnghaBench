
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctype; } ;
typedef TYPE_1__ ctype_node_t ;
 int _E1 ;
 int _E2 ;
 int _E3 ;
 int _E4 ;
 int _E5 ;
 int _ISALPHA ;
 int _ISBLANK ;
 int _ISCNTRL ;
 int _ISDIGIT ;
 int _ISGRAPH ;
 int _ISLOWER ;
 int _ISPRINT ;
 int _ISPUNCT ;
 int _ISSPACE ;
 int _ISUPPER ;
 int _ISXDIGIT ;
 int errf (char*) ;
 int last_kw ;

__attribute__((used)) static void
add_ctype_impl(ctype_node_t *ctn)
{
 switch (last_kw) {
 case 129:
  ctn->ctype |= (_ISUPPER | _ISALPHA | _ISGRAPH | _ISPRINT);
  break;
 case 136:
  ctn->ctype |= (_ISLOWER | _ISALPHA | _ISGRAPH | _ISPRINT);
  break;
 case 143:
  ctn->ctype |= (_ISALPHA | _ISGRAPH | _ISPRINT);
  break;
 case 140:
  ctn->ctype |= (_ISDIGIT | _ISGRAPH | _ISPRINT | _ISXDIGIT | _E4);
  break;
 case 131:






  ctn->ctype |= (_ISSPACE | _ISPRINT);
  break;
 case 141:
  ctn->ctype |= _ISCNTRL;
  break;
 case 138:
  ctn->ctype |= (_ISGRAPH | _ISPRINT);
  break;
 case 133:
  ctn->ctype |= _ISPRINT;
  break;
 case 132:
  ctn->ctype |= (_ISPUNCT | _ISGRAPH | _ISPRINT);
  break;
 case 128:
  ctn->ctype |= (_ISXDIGIT | _ISPRINT);
  break;
 case 142:
  ctn->ctype |= (_ISBLANK | _ISSPACE);
  break;
 case 134:
  ctn->ctype |= (_E1 | _ISPRINT | _ISGRAPH);
  break;
 case 137:
  ctn->ctype |= (_E2 | _ISPRINT | _ISGRAPH);
  break;
 case 139:
  ctn->ctype |= (_E3 | _ISPRINT | _ISGRAPH);
  break;
 case 135:
  ctn->ctype |= (_E4 | _ISPRINT | _ISGRAPH);
  break;
 case 130:
  ctn->ctype |= (_E5 | _ISPRINT | _ISGRAPH);
  break;
 case 144:




  break;
 default:
  errf("not a valid character class");
 }
}
