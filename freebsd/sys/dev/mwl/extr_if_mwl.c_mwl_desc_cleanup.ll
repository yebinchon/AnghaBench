; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_desc_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_desc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32 }
%struct.mwl_descdma = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_softc*, %struct.mwl_descdma*)* @mwl_desc_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_desc_cleanup(%struct.mwl_softc* %0, %struct.mwl_descdma* %1) #0 {
  %3 = alloca %struct.mwl_softc*, align 8
  %4 = alloca %struct.mwl_descdma*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %3, align 8
  store %struct.mwl_descdma* %1, %struct.mwl_descdma** %4, align 8
  %5 = load %struct.mwl_descdma*, %struct.mwl_descdma** %4, align 8
  %6 = getelementptr inbounds %struct.mwl_descdma, %struct.mwl_descdma* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mwl_descdma*, %struct.mwl_descdma** %4, align 8
  %9 = getelementptr inbounds %struct.mwl_descdma, %struct.mwl_descdma* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bus_dmamap_unload(i32 %7, i32 %10)
  %12 = load %struct.mwl_descdma*, %struct.mwl_descdma** %4, align 8
  %13 = getelementptr inbounds %struct.mwl_descdma, %struct.mwl_descdma* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mwl_descdma*, %struct.mwl_descdma** %4, align 8
  %16 = getelementptr inbounds %struct.mwl_descdma, %struct.mwl_descdma* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mwl_descdma*, %struct.mwl_descdma** %4, align 8
  %19 = getelementptr inbounds %struct.mwl_descdma, %struct.mwl_descdma* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bus_dmamem_free(i32 %14, i32 %17, i32 %20)
  %22 = load %struct.mwl_descdma*, %struct.mwl_descdma** %4, align 8
  %23 = getelementptr inbounds %struct.mwl_descdma, %struct.mwl_descdma* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bus_dma_tag_destroy(i32 %24)
  %26 = load %struct.mwl_descdma*, %struct.mwl_descdma** %4, align 8
  %27 = call i32 @memset(%struct.mwl_descdma* %26, i32 0, i32 12)
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @memset(%struct.mwl_descdma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
