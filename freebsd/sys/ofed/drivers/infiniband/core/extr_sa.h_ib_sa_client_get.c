
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sa_client {int users; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void ib_sa_client_get(struct ib_sa_client *client)
{
 atomic_inc(&client->users);
}
