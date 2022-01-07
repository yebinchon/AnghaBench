
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int definition ;


 scalar_t__ FINDVAL (int ,char const*,int ) ;
 int defined ;
 int findtype ;

__attribute__((used)) static int
undefined(const char *type)
{
 definition *def;

 def = (definition *) FINDVAL(defined, type, findtype);
 return (def == ((void*)0));
}
