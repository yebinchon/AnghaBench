
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;

__attribute__((used)) static int
openfirm_checkid(phandle_t sid, phandle_t tid)
{

 for (; sid != 0; sid = OF_peer(sid))
  if (sid == tid || openfirm_checkid(OF_child(sid), tid))
   return (1);

 return (0);
}
