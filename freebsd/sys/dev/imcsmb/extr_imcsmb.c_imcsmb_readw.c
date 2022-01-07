
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int FALSE ;
 int TRUE ;
 int imcsmb_transfer (int ,int ,char,short*,int ,int ) ;

__attribute__((used)) static int
imcsmb_readw(device_t dev, u_char slave, char cmd, short *word)
{

 return (imcsmb_transfer(dev, slave, cmd, word, TRUE, FALSE));
}
