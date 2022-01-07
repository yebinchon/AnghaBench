
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int u_char ;


 int log (int,char*,scalar_t__,int const*,char*) ;

__attribute__((used)) static void
sppp_print_bytes(const u_char *p, u_short len)
{
 if (len)
  log(-1, " %*D", len, p, "-");
}
