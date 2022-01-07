; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_dma_buf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_dma_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"already released dma memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*)* @mpt_dma_buf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_dma_buf_free(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %4 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %10 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %11 = call i32 @mpt_lprt(%struct.mpt_softc* %9, i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %62

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %16 = call i32 @MPT_MAX_REQUESTS(%struct.mpt_softc* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bus_dmamap_destroy(i64 %21, i32 %29)
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %13

34:                                               ; preds = %13
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bus_dmamap_unload(i64 %37, i32 %40)
  %42 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bus_dmamem_free(i64 %44, i32 %47, i32 %50)
  %52 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %53 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @bus_dma_tag_destroy(i64 %54)
  %56 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %57 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %59 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @bus_dma_tag_destroy(i64 %60)
  br label %62

62:                                               ; preds = %34, %8
  ret void
}

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*) #1

declare dso_local i32 @MPT_MAX_REQUESTS(%struct.mpt_softc*) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i32) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
