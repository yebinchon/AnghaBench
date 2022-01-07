
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {int dummy; } ;
typedef enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;


 int HAS_FEATURE (struct ntb_softc*,int ) ;
 int KASSERT (int,char*) ;
 int NTB_B2B_BAR_2 ;
 int NTB_MAX_BARS ;
 int NTB_SPLIT_BAR ;

__attribute__((used)) static inline bool
bar_is_64bit(struct ntb_softc *ntb, enum ntb_bar bar)
{

 KASSERT(bar < NTB_MAX_BARS, ("bogus bar"));
 return (bar < NTB_B2B_BAR_2 || !HAS_FEATURE(ntb, NTB_SPLIT_BAR));
}
