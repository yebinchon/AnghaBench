
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tok_kind ;


 int error (int ) ;
 int expectbuf ;
 int s_print (int ,char*,int ,int ,int ) ;
 int toktostr (int ) ;

void
expected3(tok_kind exp1, tok_kind exp2, tok_kind exp3)
{
 s_print(expectbuf, "expected '%s', '%s' or '%s'",
  toktostr(exp1),
  toktostr(exp2),
  toktostr(exp3));
 error(expectbuf);
}
