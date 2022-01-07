
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct blame_origin {TYPE_1__ file; } ;


 int FREE_AND_NULL (int ) ;
 int drop_origin_fingerprints (struct blame_origin*) ;

__attribute__((used)) static void drop_origin_blob(struct blame_origin *o)
{
 FREE_AND_NULL(o->file.ptr);
 drop_origin_fingerprints(o);
}
