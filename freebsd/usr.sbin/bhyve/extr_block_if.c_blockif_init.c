
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVF_SIGNAL ;
 int SIGCONT ;
 int SIG_IGN ;
 int blockif_sigcont_handler ;
 int mevent_add (int ,int ,int ,int *) ;
 int signal (int ,int ) ;

__attribute__((used)) static void
blockif_init(void)
{
 mevent_add(SIGCONT, EVF_SIGNAL, blockif_sigcont_handler, ((void*)0));
 (void) signal(SIGCONT, SIG_IGN);
}
