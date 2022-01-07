
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int adapter_t ;
struct TYPE_2__ {int caps; } ;


 int SUPPORTED_AUI ;
 TYPE_1__* adapter_info (int const*) ;

__attribute__((used)) static inline int uses_xaui(const adapter_t *adap)
{
 return adapter_info(adap)->caps & SUPPORTED_AUI;
}
