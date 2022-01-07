
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct cc_var {int dummy; } ;


 int CCV (struct cc_var*,int ) ;
 int snd_wnd ;
 unsigned int ulmin (int ,unsigned long) ;

__attribute__((used)) static inline uint32_t
cdg_window_decrease(struct cc_var *ccv, unsigned long owin, unsigned int beta)
{

 return ((ulmin(CCV(ccv, snd_wnd), owin) * beta) / 100);
}
