
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 size_t* flit_desc_map ;

__attribute__((used)) static __inline u_int
flits_to_desc(u_int n)
{
 return (flit_desc_map[n]);
}
