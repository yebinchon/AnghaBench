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
struct nat64clat_cfg {int dummy; } ;
struct ipfw_nat64clat_stats {int dummy; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nat64clat_cfg*,struct ipfw_nat64clat_stats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dropped ; 
 int /*<<< orphan*/  ifrags ; 
 int /*<<< orphan*/  nomem ; 
 int /*<<< orphan*/  noproto ; 
 int /*<<< orphan*/  noroute4 ; 
 int /*<<< orphan*/  noroute6 ; 
 int /*<<< orphan*/  oerrors ; 
 int /*<<< orphan*/  ofrags ; 
 int /*<<< orphan*/  opcnt46 ; 
 int /*<<< orphan*/  opcnt64 ; 

__attribute__((used)) static void
FUNC1(struct ip_fw_chain *ch, struct nat64clat_cfg *cfg,
    struct ipfw_nat64clat_stats *stats)
{

	FUNC0(cfg, stats, opcnt64);
	FUNC0(cfg, stats, opcnt46);
	FUNC0(cfg, stats, ofrags);
	FUNC0(cfg, stats, ifrags);
	FUNC0(cfg, stats, oerrors);
	FUNC0(cfg, stats, noroute4);
	FUNC0(cfg, stats, noroute6);
	FUNC0(cfg, stats, noproto);
	FUNC0(cfg, stats, nomem);
	FUNC0(cfg, stats, dropped);
}