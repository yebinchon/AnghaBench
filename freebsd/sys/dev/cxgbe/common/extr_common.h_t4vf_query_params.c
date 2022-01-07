
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int t4_query_params (struct adapter*,int ,int ,int ,unsigned int,int const*,int *) ;

__attribute__((used)) static inline int t4vf_query_params(struct adapter *adapter,
        unsigned int nparams, const u32 *params,
        u32 *vals)
{
 return t4_query_params(adapter, 0, 0, 0, nparams, params, vals);
}
