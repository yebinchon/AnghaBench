; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_dma = type { i64, i32*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"dma tag is NULL\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_dma_free(%struct.bxe_softc* %0, %struct.bxe_dma* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.bxe_dma*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.bxe_dma* %1, %struct.bxe_dma** %4, align 8
  %5 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %6 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %12 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @DBASSERT(%struct.bxe_softc* %10, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %18 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %21 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %24 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @bus_dmamap_sync(i32* %19, i32 %22, i32 %25)
  %27 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %28 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %31 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bus_dmamap_unload(i32* %29, i32 %32)
  %34 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %35 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %38 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %41 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bus_dmamem_free(i32* %36, i32 %39, i32 %42)
  %44 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %45 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @bus_dma_tag_destroy(i32* %46)
  br label %48

48:                                               ; preds = %9, %2
  %49 = load %struct.bxe_dma*, %struct.bxe_dma** %4, align 8
  %50 = call i32 @memset(%struct.bxe_dma* %49, i32 0, i32 24)
  ret void
}

declare dso_local i32 @DBASSERT(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @memset(%struct.bxe_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
