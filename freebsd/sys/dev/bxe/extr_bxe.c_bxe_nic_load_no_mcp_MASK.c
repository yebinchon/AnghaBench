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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int,int,int,int) ; 
 int FW_MSG_CODE_DRV_LOAD_COMMON ; 
 int FW_MSG_CODE_DRV_LOAD_FUNCTION ; 
 int FW_MSG_CODE_DRV_LOAD_PORT ; 
 int FUNC1 (struct bxe_softc*) ; 
 int FUNC2 (struct bxe_softc*) ; 
 int** load_count ; 

__attribute__((used)) static int
FUNC3(struct bxe_softc *sc)
{
    int path = FUNC1(sc);
    int port = FUNC2(sc);

    FUNC0(sc, "NO MCP - load counts[%d]      %d, %d, %d\n",
          path, load_count[path][0], load_count[path][1],
          load_count[path][2]);
    load_count[path][0]++;
    load_count[path][1 + port]++;
    FUNC0(sc, "NO MCP - new load counts[%d]  %d, %d, %d\n",
          path, load_count[path][0], load_count[path][1],
          load_count[path][2]);
    if (load_count[path][0] == 1) {
        return (FW_MSG_CODE_DRV_LOAD_COMMON);
    } else if (load_count[path][1 + port] == 1) {
        return (FW_MSG_CODE_DRV_LOAD_PORT);
    } else {
        return (FW_MSG_CODE_DRV_LOAD_FUNCTION);
    }
}