
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_core_match {int member_0; } ;
struct bhnd_core_info {int dummy; } ;
typedef int bhnd_devclass_t ;


 int BHND_MATCH_CORE_CLASS (int ) ;
 struct bhnd_core_info const* bhnd_match_core (struct bhnd_core_info const*,int ,struct bhnd_core_match*) ;

const struct bhnd_core_info *
bhnd_find_core(const struct bhnd_core_info *cores, u_int num_cores,
    bhnd_devclass_t class)
{
 struct bhnd_core_match md = {
  BHND_MATCH_CORE_CLASS(class)
 };

 return bhnd_match_core(cores, num_cores, &md);
}
