; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_dma_post_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_dma_post_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_softc = type { i32 }
%struct.glxsb_dma_map = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glxsb_softc*, %struct.glxsb_dma_map*)* @glxsb_dma_post_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glxsb_dma_post_op(%struct.glxsb_softc* %0, %struct.glxsb_dma_map* %1) #0 {
  %3 = alloca %struct.glxsb_softc*, align 8
  %4 = alloca %struct.glxsb_dma_map*, align 8
  store %struct.glxsb_softc* %0, %struct.glxsb_softc** %3, align 8
  store %struct.glxsb_dma_map* %1, %struct.glxsb_dma_map** %4, align 8
  %5 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %6 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %9 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %12 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @bus_dmamap_sync(i32 %7, i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
