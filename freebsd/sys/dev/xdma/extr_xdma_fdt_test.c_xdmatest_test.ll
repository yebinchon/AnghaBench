; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_fdt_test.c_xdmatest_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_fdt_test.c_xdmatest_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdmatest_softc = type { i32, i32*, i32*, i32, i32, i32, %struct.TYPE_2__, i64*, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't find xDMA controller.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't alloc virtual DMA channel.\0A\00", align 1
@xdmatest_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Can't setup xDMA interrupt handler.\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@XR_TYPE_PHYS_ADDR = common dso_local global i32 0, align 4
@XDMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Can't configure virtual channel.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdmatest_softc*)* @xdmatest_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdmatest_test(%struct.xdmatest_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdmatest_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xdmatest_softc* %0, %struct.xdmatest_softc** %3, align 8
  %6 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %7 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32* @xdma_ofw_get(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %11 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %10, i32 0, i32 13
  store i32* %9, i32** %11, align 8
  %12 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %13 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %12, i32 0, i32 13
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %18 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %155

21:                                               ; preds = %1
  %22 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %23 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %22, i32 0, i32 13
  %24 = load i32*, i32** %23, align 8
  %25 = call i32* @xdma_channel_alloc(i32* %24)
  %26 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %27 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %29 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %34 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %155

37:                                               ; preds = %21
  %38 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %39 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @xdmatest_intr, align 4
  %42 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %43 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %44 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %43, i32 0, i32 12
  %45 = call i32 @xdma_setup_intr(i32* %40, i32 %41, %struct.xdmatest_softc* %42, i32* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %50 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %155

53:                                               ; preds = %37
  %54 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %55 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %58 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %61 = call i32 @bus_dmamap_sync(i32 %56, i32 %59, i32 %60)
  %62 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %63 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %66 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %69 = call i32 @bus_dmamap_sync(i32 %64, i32 %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %91, %53
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %73 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 255
  %79 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %80 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %86 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %85, i32 0, i32 7
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %76
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %70

94:                                               ; preds = %70
  %95 = load i32, i32* @XR_TYPE_PHYS_ADDR, align 4
  %96 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %97 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 7
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @XDMA_MEM_TO_MEM, align 4
  %100 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %101 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 6
  store i32 %99, i32* %102, align 4
  %103 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %104 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %107 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  store i32 %105, i32* %108, align 4
  %109 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %110 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %113 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  store i32 %111, i32* %114, align 4
  %115 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %116 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 4, i32* %117, align 4
  %118 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %119 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 4, i32* %120, align 4
  %121 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %122 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %125 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 4
  %127 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %128 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  store i32 1, i32* %129, align 4
  %130 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %131 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %134 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %137 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %140 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @xdma_request(i32* %132, i32 %135, i32 %138, i32 %141)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %94
  %146 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %147 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %155

150:                                              ; preds = %94
  %151 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %152 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @xdma_begin(i32* %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %150, %145, %48, %32, %16
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32* @xdma_ofw_get(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @xdma_channel_alloc(i32*) #1

declare dso_local i32 @xdma_setup_intr(i32*, i32, %struct.xdmatest_softc*, i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @xdma_request(i32*, i32, i32, i32) #1

declare dso_local i32 @xdma_begin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
