
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int HEADER_IS_ZERO (int *,int ) ;
 int MATCH_CRITERIA_ENABLE_INNER_BIT ;
 int MATCH_CRITERIA_ENABLE_MISC_BIT ;
 int MATCH_CRITERIA_ENABLE_OUTER_BIT ;
 int inner_headers ;
 int misc_parameters ;
 int outer_headers ;

__attribute__((used)) static u8 get_match_criteria_enable(u32 *match_criteria)
{
 u8 match_criteria_enable;

 match_criteria_enable =
  (!HEADER_IS_ZERO(match_criteria, outer_headers)) <<
  MATCH_CRITERIA_ENABLE_OUTER_BIT;
 match_criteria_enable |=
  (!HEADER_IS_ZERO(match_criteria, misc_parameters)) <<
  MATCH_CRITERIA_ENABLE_MISC_BIT;
 match_criteria_enable |=
  (!HEADER_IS_ZERO(match_criteria, inner_headers)) <<
  MATCH_CRITERIA_ENABLE_INNER_BIT;

 return match_criteria_enable;
}
