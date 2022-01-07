
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tok_kind ;


 int error (int ) ;
 int expectbuf ;
 int s_print (int ,char*,int ) ;
 int toktostr (int ) ;

void
expected1(tok_kind exp1)
{
 s_print(expectbuf, "expected '%s'",
  toktostr(exp1));
 error(expectbuf);
}
