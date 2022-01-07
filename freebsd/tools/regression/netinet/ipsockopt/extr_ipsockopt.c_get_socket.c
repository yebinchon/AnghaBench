
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_socket_priv (int) ;
 int get_socket_unpriv (int) ;

__attribute__((used)) static int
get_socket(int type, int priv)
{

 if (priv)
  return (get_socket_priv(type));
 else
  return (get_socket_unpriv(type));
}
