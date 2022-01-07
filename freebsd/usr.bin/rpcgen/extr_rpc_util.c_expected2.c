
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tok_kind ;


 int error (int ) ;
 int expectbuf ;
 int s_print (int ,char*,int ,int ) ;
 int toktostr (int ) ;

void
expected2(tok_kind exp1, tok_kind exp2)
{
 s_print(expectbuf, "expected '%s' or '%s'",
  toktostr(exp1),
  toktostr(exp2));
 error(expectbuf);
}
