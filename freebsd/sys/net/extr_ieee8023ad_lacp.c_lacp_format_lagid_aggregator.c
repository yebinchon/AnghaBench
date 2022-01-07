
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_aggregator {int la_partner; int la_actor; } ;


 char const* lacp_format_lagid (int *,int *,char*,size_t) ;

const char *
lacp_format_lagid_aggregator(const struct lacp_aggregator *la,
    char *buf, size_t buflen)
{
 if (la == ((void*)0)) {
  return ("(none)");
 }

 return (lacp_format_lagid(&la->la_actor, &la->la_partner, buf, buflen));
}
