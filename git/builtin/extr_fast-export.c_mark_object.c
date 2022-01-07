
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct object {int dummy; } ;


 int add_decoration (int *,struct object*,int ) ;
 int idnums ;
 int mark_to_ptr (int ) ;

__attribute__((used)) static inline void mark_object(struct object *object, uint32_t mark)
{
 add_decoration(&idnums, object, mark_to_ptr(mark));
}
