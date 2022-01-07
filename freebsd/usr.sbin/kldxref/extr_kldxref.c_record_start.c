
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXRECSIZE ;
 int memset (int ,int ,int ) ;
 int recbuf ;
 scalar_t__ recpos ;

__attribute__((used)) static void
record_start(void)
{

 recpos = 0;
 memset(recbuf, 0, MAXRECSIZE);
}
