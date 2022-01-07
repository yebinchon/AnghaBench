
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid {int dummy; } ;


 int memcmp (struct uuid const*,struct uuid const*,int) ;

int
uuidcmp(const struct uuid *uuid1, const struct uuid *uuid2)
{

 return (memcmp(uuid1, uuid2, sizeof(struct uuid)));
}
