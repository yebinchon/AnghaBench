
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;


 int last_idnum ;
 int mark_object (struct object*,int ) ;

__attribute__((used)) static inline void mark_next_object(struct object *object)
{
 mark_object(object, ++last_idnum);
}
