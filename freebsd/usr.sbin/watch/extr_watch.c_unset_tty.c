
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSANOW ;
 int otty ;
 int std_in ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) static void
unset_tty(void)
{

 tcsetattr(std_in, TCSANOW, &otty);
}
