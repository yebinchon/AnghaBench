
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char BYTE ;


 char NUMBER ;
 int gets (char*) ;
 scalar_t__ isdigit (char) ;
 int n ;
 size_t pos ;
 char* s ;

BYTE read_op()
{
    if(pos == 0) {
 gets(s);
    }

    while(s[pos] == ' ' || s[pos] == '\t')
 pos++;

    if(s[pos] == '\0') {
 pos = 0;
 return('\n');
    }

    if(!isdigit(s[pos]))
 return(s[pos++]);

    n = s[pos] - '0';
    while(isdigit(s[++pos]))
 n = 10 * n + s[pos] - '0';

    return NUMBER;
}
