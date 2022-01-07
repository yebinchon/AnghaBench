
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int TCSANOW ;
 int tcsetattr (int ,int ,int *) ;
 int tio_orig ;

__attribute__((used)) static void
ttyclose(void)
{
 tcsetattr(STDIN_FILENO, TCSANOW, &tio_orig);
}
