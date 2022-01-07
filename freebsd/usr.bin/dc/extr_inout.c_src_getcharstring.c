
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; size_t pos; } ;
struct TYPE_4__ {TYPE_1__ string; } ;
struct source {char lastchar; TYPE_2__ u; } ;


 int EOF ;

__attribute__((used)) static int
src_getcharstring(struct source *src)
{

 src->lastchar = src->u.string.buf[src->u.string.pos];
 if (src->lastchar == '\0')
  return (EOF);
 else {
  src->u.string.pos++;
  return (src->lastchar);
 }
}
