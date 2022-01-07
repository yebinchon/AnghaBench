
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_state {int attr; int setto; } ;


 int ATTR__FALSE ;
 int ATTR__TRUE ;
 int ATTR__UNSET ;
 int attr_name_valid (char const*,int) ;
 int blank ;
 int git_attr_internal (char const*,int) ;
 int report_invalid_attr (char const*,int,char const*,int) ;
 char* strchr (char const*,char) ;
 int strcspn (char const*,int ) ;
 int strspn (char const*,int ) ;
 int xmemdupz (char const*,int) ;

__attribute__((used)) static const char *parse_attr(const char *src, int lineno, const char *cp,
         struct attr_state *e)
{
 const char *ep, *equals;
 int len;

 ep = cp + strcspn(cp, blank);
 equals = strchr(cp, '=');
 if (equals && ep < equals)
  equals = ((void*)0);
 if (equals)
  len = equals - cp;
 else
  len = ep - cp;
 if (!e) {
  if (*cp == '-' || *cp == '!') {
   cp++;
   len--;
  }
  if (!attr_name_valid(cp, len)) {
   report_invalid_attr(cp, len, src, lineno);
   return ((void*)0);
  }
 } else {






  if (*cp == '-' || *cp == '!') {
   e->setto = (*cp == '-') ? ATTR__FALSE : ATTR__UNSET;
   cp++;
   len--;
  }
  else if (!equals)
   e->setto = ATTR__TRUE;
  else {
   e->setto = xmemdupz(equals + 1, ep - equals - 1);
  }
  e->attr = git_attr_internal(cp, len);
 }
 return ep + strspn(ep, blank);
}
