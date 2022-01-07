; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_free_cmd_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_free_cmd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.iwi_cmd_ring = type { i32*, i32, i32* }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*, %struct.iwi_cmd_ring*)* @iwi_free_cmd_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_free_cmd_ring(%struct.iwi_softc* %0, %struct.iwi_cmd_ring* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.iwi_cmd_ring*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.iwi_cmd_ring* %1, %struct.iwi_cmd_ring** %4, align 8
  %5 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %6 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %11 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %14 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %17 = call i32 @bus_dmamap_sync(i32* %12, i32 %15, i32 %16)
  %18 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %19 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %22 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bus_dmamap_unload(i32* %20, i32 %23)
  %25 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %26 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %29 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %32 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bus_dmamem_free(i32* %27, i32* %30, i32 %33)
  br label %35

35:                                               ; preds = %9, %2
  %36 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %37 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %4, align 8
  %42 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bus_dma_tag_destroy(i32* %43)
  br label %45

45:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
