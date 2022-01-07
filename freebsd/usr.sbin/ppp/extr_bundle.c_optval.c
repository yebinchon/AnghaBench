
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle {int dummy; } ;


 scalar_t__ Enabled (struct bundle*,int) ;

__attribute__((used)) static const char *
optval(struct bundle *bundle, int opt)
{
  return Enabled(bundle, opt) ? "enabled" : "disabled";
}
