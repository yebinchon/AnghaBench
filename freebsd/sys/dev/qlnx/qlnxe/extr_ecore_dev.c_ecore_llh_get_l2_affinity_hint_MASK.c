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
struct ecore_dev {scalar_t__ l2_affin_hint; } ;
typedef  enum ecore_eng { ____Placeholder_ecore_eng } ecore_eng ;

/* Variables and functions */
 int ECORE_ENG0 ; 
 int ECORE_ENG1 ; 

enum ecore_eng FUNC0(struct ecore_dev *p_dev)
{
	return p_dev->l2_affin_hint ? ECORE_ENG1 : ECORE_ENG0;
}