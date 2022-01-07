
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;


 size_t qp_atomic_read_offset (size_t volatile*) ;
 int qp_atomic_write_offset (size_t volatile*,size_t) ;

__attribute__((used)) static inline void
qp_add_pointer(volatile uint64_t *var, size_t add, uint64_t size)
{
 uint64_t new_val = qp_atomic_read_offset(var);

 if (new_val >= size - add)
  new_val -= size;

 new_val += add;
 qp_atomic_write_offset(var, new_val);
}
