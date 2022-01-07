
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terminal {int tm_flags; } ;


 int TERMINAL_LOCK (struct terminal*) ;
 int TERMINAL_UNLOCK (struct terminal*) ;
 int TF_MUTE ;

void
terminal_mute(struct terminal *tm, int yes)
{

 TERMINAL_LOCK(tm);
 if (yes)
  tm->tm_flags |= TF_MUTE;
 else
  tm->tm_flags &= ~TF_MUTE;
 TERMINAL_UNLOCK(tm);
}
