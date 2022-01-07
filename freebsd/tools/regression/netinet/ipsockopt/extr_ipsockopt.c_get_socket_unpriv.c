
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET ;
 int socket (int ,int,int ) ;

__attribute__((used)) static int
get_socket_unpriv(int type)
{

 return (socket(PF_INET, type, 0));
}
