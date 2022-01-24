#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_long ;

/* Variables and functions */
 int LOG_KEPT_LOCAL ; 
 int LOG_KEPT_SYSLOG ; 
 int LogMAX ; 
 int LogMAXCONF ; 
 int LogMIN ; 
 int LogMask ; 
 int FUNC0 (int) ; 

int
FUNC1(int id, u_long mask)
{
  if (id < LogMIN || id > LogMAX)
    return 0;
  if (id > LogMAXCONF)
    return LOG_KEPT_LOCAL | LOG_KEPT_SYSLOG;

  return ((mask & FUNC0(id)) ? LOG_KEPT_LOCAL : 0) |
    ((LogMask & FUNC0(id)) ? LOG_KEPT_SYSLOG : 0);
}