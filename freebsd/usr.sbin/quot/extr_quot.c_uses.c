
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef long time_t ;
struct user {int spc30; int spc60; int spc90; int space; int count; } ;
typedef scalar_t__ daddr_t ;


 int time (long*) ;
 struct user* user (int ) ;

__attribute__((used)) static void
uses(uid_t uid, daddr_t blks, time_t act)
{
 static time_t today;
 struct user *usr;

 if (!today)
  time(&today);

 usr = user(uid);
 usr->count++;
 usr->space += blks;

 if (today - act > 90L * 24L * 60L * 60L)
  usr->spc90 += blks;
 if (today - act > 60L * 24L * 60L * 60L)
  usr->spc60 += blks;
 if (today - act > 30L * 24L * 60L * 60L)
  usr->spc30 += blks;
}
