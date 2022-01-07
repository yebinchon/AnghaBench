
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 size_t* nws_array ;
 size_t nws_count ;

u_int
netisr_default_flow2cpu(u_int flowid)
{

 return (nws_array[flowid % nws_count]);
}
