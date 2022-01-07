
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 scalar_t__ idstart (int) ;
 scalar_t__ ocs_isdigit (int) ;

__attribute__((used)) static int32_t
idchar(int c)
{
 return idstart(c) || ocs_isdigit(c);
}
