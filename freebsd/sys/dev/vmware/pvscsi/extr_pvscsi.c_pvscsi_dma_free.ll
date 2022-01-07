; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32 }
%struct.pvscsi_dma = type { i64, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*, %struct.pvscsi_dma*)* @pvscsi_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_dma_free(%struct.pvscsi_softc* %0, %struct.pvscsi_dma* %1) #0 {
  %3 = alloca %struct.pvscsi_softc*, align 8
  %4 = alloca %struct.pvscsi_dma*, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %3, align 8
  store %struct.pvscsi_dma* %1, %struct.pvscsi_dma** %4, align 8
  %5 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %6 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %11 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %16 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %19 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bus_dmamap_unload(i32* %17, i32 %20)
  br label %22

22:                                               ; preds = %14, %9
  %23 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %24 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %29 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %32 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %35 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bus_dmamem_free(i32* %30, i32* %33, i32 %36)
  br label %38

38:                                               ; preds = %27, %22
  %39 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %40 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @bus_dma_tag_destroy(i32* %41)
  br label %43

43:                                               ; preds = %38, %2
  %44 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %4, align 8
  %45 = call i32 @bzero(%struct.pvscsi_dma* %44, i32 32)
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bzero(%struct.pvscsi_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
