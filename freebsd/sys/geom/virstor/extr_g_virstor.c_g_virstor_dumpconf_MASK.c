#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct sbuf {int dummy; } ;
struct g_virstor_softc {size_t n_components; size_t chunk_size; size_t chunk_count; size_t virsize; TYPE_3__* components; } ;
struct g_virstor_component {size_t index; size_t chunk_count; size_t chunk_next; size_t chunk_reserved; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct g_virstor_softc* softc; } ;
struct g_consumer {struct g_virstor_component* private; } ;
typedef  size_t off_t ;
struct TYPE_6__ {TYPE_2__* gcons; scalar_t__ chunk_reserved; scalar_t__ chunk_next; scalar_t__ chunk_count; } ;
struct TYPE_5__ {TYPE_1__* provider; } ;
struct TYPE_4__ {scalar_t__ mediasize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,char const*,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (struct g_virstor_softc*) ; 

__attribute__((used)) static void
FUNC3(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
	struct g_virstor_softc *sc;

	FUNC0();
	sc = gp->softc;

	if (sc == NULL || pp != NULL)
		return;

	if (cp != NULL) {
		/* For each component */
		struct g_virstor_component *comp;

		comp = cp->private;
		if (comp == NULL)
			return;
		FUNC1(sb, "%s<ComponentIndex>%u</ComponentIndex>\n",
		    indent, comp->index);
		FUNC1(sb, "%s<ChunkCount>%u</ChunkCount>\n",
		    indent, comp->chunk_count);
		FUNC1(sb, "%s<ChunksUsed>%u</ChunksUsed>\n",
		    indent, comp->chunk_next);
		FUNC1(sb, "%s<ChunksReserved>%u</ChunksReserved>\n",
		    indent, comp->chunk_reserved);
		FUNC1(sb, "%s<StorageFree>%u%%</StorageFree>\n",
		    indent,
		    comp->chunk_next > 0 ? 100 -
		    ((comp->chunk_next + comp->chunk_reserved) * 100) /
		    comp->chunk_count : 100);
	} else {
		/* For the whole thing */
		u_int count, used, i;
		off_t size;

		count = used = size = 0;
		for (i = 0; i < sc->n_components; i++) {
			if (sc->components[i].gcons != NULL) {
				count += sc->components[i].chunk_count;
				used += sc->components[i].chunk_next +
				    sc->components[i].chunk_reserved;
				size += sc->components[i].gcons->
				    provider->mediasize;
			}
		}

		FUNC1(sb, "%s<Status>"
		    "Components=%u, Online=%u</Status>\n", indent,
		    sc->n_components, FUNC2(sc));
		FUNC1(sb, "%s<State>%u%% physical free</State>\n",
		    indent, 100-(used * 100) / count);
		FUNC1(sb, "%s<ChunkSize>%zu</ChunkSize>\n", indent,
		    sc->chunk_size);
		FUNC1(sb, "%s<PhysicalFree>%u%%</PhysicalFree>\n",
		    indent, used > 0 ? 100 - (used * 100) / count : 100);
		FUNC1(sb, "%s<ChunkPhysicalCount>%u</ChunkPhysicalCount>\n",
		    indent, count);
		FUNC1(sb, "%s<ChunkVirtualCount>%zu</ChunkVirtualCount>\n",
		    indent, sc->chunk_count);
		FUNC1(sb, "%s<PhysicalBacking>%zu%%</PhysicalBacking>\n",
		    indent,
		    (count * 100) / sc->chunk_count);
		FUNC1(sb, "%s<PhysicalBackingSize>%jd</PhysicalBackingSize>\n",
		    indent, size);
		FUNC1(sb, "%s<VirtualSize>%jd</VirtualSize>\n", indent,
		    sc->virsize);
	}
}