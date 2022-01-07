
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isns {int i_addr; TYPE_1__* i_ai; } ;
struct TYPE_2__ {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;


 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int log_warn (char*,int ) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
isns_do_connect(struct isns *isns)
{
 int s;

 s = socket(isns->i_ai->ai_family, isns->i_ai->ai_socktype,
     isns->i_ai->ai_protocol);
 if (s < 0) {
  log_warn("socket(2) failed for %s", isns->i_addr);
  return (-1);
 }
 if (connect(s, isns->i_ai->ai_addr, isns->i_ai->ai_addrlen)) {
  log_warn("connect(2) failed for %s", isns->i_addr);
  close(s);
  return (-1);
 }
 return(s);
}
