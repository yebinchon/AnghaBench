
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int t4_set_params (struct adapter*,int ,int ,int ,unsigned int,int const*,int const*) ;

__attribute__((used)) static inline int t4vf_set_params(struct adapter *adapter,
      unsigned int nparams, const u32 *params,
      const u32 *vals)
{
 return t4_set_params(adapter, 0, 0, 0, nparams, params, vals);
}
