
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 scalar_t__ isalpha (int) ;

__attribute__((used)) static int32_t
idstart(int c)
{
 return isalpha(c) || (c == '_') || (c == '$');
}
