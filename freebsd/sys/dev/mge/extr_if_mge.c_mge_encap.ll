; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32, i32, i32, i32, %struct.mge_desc_wrapper*, %struct.ifnet* }
%struct.mge_desc_wrapper = type { i32, %struct.TYPE_4__*, %struct.mbuf*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MGE_TX_DESC_NUM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MGE_TX_LAST = common dso_local global i32 0, align 4
@MGE_TX_FIRST = common dso_local global i32 0, align 4
@MGE_TX_ETH_CRC = common dso_local global i32 0, align 4
@MGE_TX_EN_INT = common dso_local global i32 0, align 4
@MGE_TX_PADDING = common dso_local global i32 0, align 4
@MGE_DMA_OWNED = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mge_softc*, %struct.mbuf*)* @mge_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_encap(%struct.mge_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mge_softc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mge_desc_wrapper*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.mge_desc_wrapper* null, %struct.mge_desc_wrapper** %6, align 8
  %16 = load i32, i32* @MGE_TX_DESC_NUM, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca %struct.TYPE_5__, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %20, i32 0, i32 5
  %22 = load %struct.ifnet*, %struct.ifnet** %21, align 8
  store %struct.ifnet* %22, %struct.ifnet** %7, align 8
  %23 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %26, i32 0, i32 4
  %28 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %28, i64 %30
  store %struct.mge_desc_wrapper* %31, %struct.mge_desc_wrapper** %6, align 8
  %32 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %6, align 8
  %33 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %36 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %40 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %41 = call i32 @bus_dmamap_load_mbuf_sg(i32 %37, i32 %38, %struct.mbuf* %39, %struct.TYPE_5__* %19, i32* %13, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %46 = call i32 @m_freem(%struct.mbuf* %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %146

48:                                               ; preds = %2
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @bus_dmamap_unload(i32 %54, i32 %55)
  %57 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %58 = call i32 @m_freem(%struct.mbuf* %57)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %146

59:                                               ; preds = %48
  %60 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %65 = call i32 @bus_dmamap_sync(i32 %62, i32 %63, i32 %64)
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %120, %59
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %123

70:                                               ; preds = %66
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %6, align 8
  %77 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %6, align 8
  %86 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %90 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %6, align 8
  %91 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %90, i32 0, i32 2
  store %struct.mbuf* %89, %struct.mbuf** %91, align 8
  %92 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %6, align 8
  %93 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %70
  %99 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %100 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %6, align 8
  %101 = call i32 @mge_offload_setup_descriptor(%struct.mge_softc* %99, %struct.mge_desc_wrapper* %100)
  br label %102

102:                                              ; preds = %98, %70
  %103 = load i32, i32* @MGE_TX_LAST, align 4
  %104 = load i32, i32* @MGE_TX_FIRST, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @MGE_TX_ETH_CRC, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @MGE_TX_EN_INT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @MGE_TX_PADDING, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @MGE_DMA_OWNED, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %6, align 8
  %115 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %102
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %66

123:                                              ; preds = %66
  %124 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %125 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %6, align 8
  %128 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %131 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @bus_dmamap_sync(i32 %126, i32 %129, i32 %132)
  %134 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %135 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* @MGE_TX_DESC_NUM, align 4
  %139 = srem i32 %137, %138
  %140 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %141 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %143 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %146

146:                                              ; preds = %123, %51, %44
  %147 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_5__*, i32*, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @bus_dmamap_unload(i32, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @mge_offload_setup_descriptor(%struct.mge_softc*, %struct.mge_desc_wrapper*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
