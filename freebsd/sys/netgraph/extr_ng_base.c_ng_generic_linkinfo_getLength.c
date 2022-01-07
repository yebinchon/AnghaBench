
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct ng_parse_type {int dummy; } ;
struct TYPE_2__ {int hooks; } ;
struct hooklist {TYPE_1__ nodeinfo; } ;



__attribute__((used)) static int
ng_generic_linkinfo_getLength(const struct ng_parse_type *type,
 const u_char *start, const u_char *buf)
{
 const struct hooklist *hl = (const struct hooklist *)start;

 return hl->nodeinfo.hooks;
}
