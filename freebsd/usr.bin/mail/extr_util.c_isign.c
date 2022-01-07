
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ignoretab {scalar_t__ i_count; } ;
typedef int realfld ;


 int LINESIZE ;
 struct ignoretab* ignoreall ;
 int istrncpy (char*,char const*,int) ;
 int member (char*,struct ignoretab*) ;

int
isign(const char *field, struct ignoretab ignore[2])
{
 char realfld[LINESIZE];

 if (ignore == ignoreall)
  return (1);




 istrncpy(realfld, field, sizeof(realfld));
 if (ignore[1].i_count > 0)
  return (!member(realfld, ignore + 1));
 else
  return (member(realfld, ignore));
}
