
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const ARGFLAG ;
 int COMMA ;
 int PUSHBACK (char const) ;
 char const* lquote ;
 int pbnum (int) ;
 int pbstr (char const*) ;
 int pushback (int ) ;
 char const* rquote ;

void
expand_macro(const char *argv[], int argc)
{
 const char *t;
 const char *p;
 int n;
 int argno;

 t = argv[0];
 p = t;
 while (*p)
  p++;
 p--;
 while (p > t) {
  if (*(p - 1) != ARGFLAG)
   PUSHBACK(*p);
  else {
   switch (*p) {

   case '#':
    pbnum(argc - 2);
    break;
   case '0':
   case '1':
   case '2':
   case '3':
   case '4':
   case '5':
   case '6':
   case '7':
   case '8':
   case '9':
    if ((argno = *p - '0') < argc - 1)
     pbstr(argv[argno + 1]);
    break;
   case '*':
    if (argc > 2) {
     for (n = argc - 1; n > 2; n--) {
      pbstr(argv[n]);
      pushback(COMMA);
     }
     pbstr(argv[2]);
    }
    break;
                        case '@':
    if (argc > 2) {
     for (n = argc - 1; n > 2; n--) {
      pbstr(rquote);
      pbstr(argv[n]);
      pbstr(lquote);
      pushback(COMMA);
     }
     pbstr(rquote);
     pbstr(argv[2]);
     pbstr(lquote);
    }
                                break;
   default:
    PUSHBACK(*p);
    PUSHBACK('$');
    break;
   }
   p--;
  }
  p--;
 }
 if (p == t)
  PUSHBACK(*p);
}
