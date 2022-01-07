; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_allocate_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_allocate_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { %struct.mge_desc_wrapper*, i32, %struct.mge_desc_wrapper*, i32, i32, i32, i32, i32 }
%struct.mge_desc_wrapper = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MGE_TX_DESC_NUM = common dso_local global i32 0, align 4
@MGE_RX_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mge_softc*)* @mge_allocate_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_allocate_dma(%struct.mge_softc* %0) #0 {
  %2 = alloca %struct.mge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mge_desc_wrapper*, align 8
  %5 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %2, align 8
  %6 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @bus_get_dma_tag(i32 %8)
  %10 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %11 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %12 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %12, i32 0, i32 6
  %14 = call i32 @bus_dma_tag_create(i32 %9, i32 16, i32 0, i32 %10, i32 %11, i32* null, i32* null, i32 4, i32 1, i32 4, i32 0, i32* null, i32* null, i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %16 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %16, i32 0, i32 2
  %18 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %17, align 8
  %19 = load i32, i32* @MGE_TX_DESC_NUM, align 4
  %20 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %21 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %20, i32 0, i32 5
  %22 = call i32 @mge_alloc_desc_dma(%struct.mge_softc* %15, %struct.mge_desc_wrapper* %18, i32 %19, i32* %21)
  %23 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %24 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %24, i32 0, i32 0
  %26 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %25, align 8
  %27 = load i32, i32* @MGE_RX_DESC_NUM, align 4
  %28 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %29 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %28, i32 0, i32 4
  %30 = call i32 @mge_alloc_desc_dma(%struct.mge_softc* %23, %struct.mge_desc_wrapper* %26, i32 %27, i32* %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %55, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MGE_RX_DESC_NUM, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %37 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %36, i32 0, i32 0
  %38 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %38, i64 %40
  store %struct.mge_desc_wrapper* %41, %struct.mge_desc_wrapper** %4, align 8
  %42 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %46 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %49 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %48, i32 0, i32 2
  %50 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %51 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @mge_new_rxbuf(i32 %44, i32 %47, i32* %49, i32* %53)
  br label %55

55:                                               ; preds = %35
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %31

58:                                               ; preds = %31
  %59 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %60 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %59, i32 0, i32 2
  %61 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %60, align 8
  %62 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %61, i64 0
  %63 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %68 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %67, i32 0, i32 0
  %69 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %68, align 8
  %70 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %69, i64 0
  %71 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %74 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  ret i32 0
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @mge_alloc_desc_dma(%struct.mge_softc*, %struct.mge_desc_wrapper*, i32, i32*) #1

declare dso_local i32 @mge_new_rxbuf(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
