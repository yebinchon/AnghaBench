
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short IEEE80211_SEQ_SEQ_SHIFT ;
 int exit (int) ;
 int time_print (char*,unsigned short) ;

unsigned short fnseq(unsigned short fn, unsigned short seq) {
        unsigned short r = 0;

        if(fn > 15) {
                time_print("too many fragments (%d)\n", fn);
                exit(1);
        }

        r = fn;

        r |= ( (seq % 4096) << IEEE80211_SEQ_SEQ_SHIFT);

        return r;
}
