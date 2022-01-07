
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stream; } ;
struct source {int lastchar; TYPE_1__ u; } ;


 int getc (int ) ;

__attribute__((used)) static int
src_getcharstream(struct source *src)
{

 return (src->lastchar = getc(src->u.stream));
}
