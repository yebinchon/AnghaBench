
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terminal {int tm_flags; } ;


 int TF_BELL ;

__attribute__((used)) static void
termteken_bell(void *softc)
{
 struct terminal *tm = softc;

 tm->tm_flags |= TF_BELL;
}
