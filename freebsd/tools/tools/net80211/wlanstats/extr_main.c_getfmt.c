
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* fmt; int tag; } ;


 int nitems (TYPE_1__*) ;
 scalar_t__ strcasecmp (int ,char const*) ;
 TYPE_1__* tags ;

__attribute__((used)) static const char *
getfmt(const char *tag)
{
 int i;
 for (i = 0; i < nitems(tags); i++)
  if (strcasecmp(tags[i].tag, tag) == 0)
   return tags[i].fmt;
 return tag;
}
