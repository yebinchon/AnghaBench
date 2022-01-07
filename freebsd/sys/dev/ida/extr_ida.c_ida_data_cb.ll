; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_data_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_data_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ida_hardware_qcb = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.ida_softc = type { i32, i32, i32, i32, i32, i32 }
%struct.ida_qcb = type { i32, i32, i32, %struct.ida_hardware_qcb*, %struct.ida_softc* }

@dumping = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@IDA_NSEG = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@DMA_DATA_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bad DMA data flags\00", align 1
@link = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@IDA_QFROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_10__*, i32, i32)* @ida_data_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_data_cb(i8* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ida_hardware_qcb*, align 8
  %10 = alloca %struct.ida_softc*, align 8
  %11 = alloca %struct.ida_qcb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.ida_qcb*
  store %struct.ida_qcb* %15, %struct.ida_qcb** %11, align 8
  %16 = load %struct.ida_qcb*, %struct.ida_qcb** %11, align 8
  %17 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %16, i32 0, i32 4
  %18 = load %struct.ida_softc*, %struct.ida_softc** %17, align 8
  store %struct.ida_softc* %18, %struct.ida_softc** %10, align 8
  %19 = load i32, i32* @dumping, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.ida_softc*, %struct.ida_softc** %10, align 8
  %23 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %22, i32 0, i32 5
  %24 = load i32, i32* @MA_OWNED, align 4
  %25 = call i32 @mtx_assert(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ida_qcb*, %struct.ida_qcb** %11, align 8
  %32 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ida_softc*, %struct.ida_softc** %10, align 8
  %34 = load %struct.ida_qcb*, %struct.ida_qcb** %11, align 8
  %35 = call i32 @ida_done(%struct.ida_softc* %33, %struct.ida_qcb* %34)
  br label %150

36:                                               ; preds = %26
  %37 = load %struct.ida_qcb*, %struct.ida_qcb** %11, align 8
  %38 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %37, i32 0, i32 3
  %39 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %38, align 8
  store %struct.ida_hardware_qcb* %39, %struct.ida_hardware_qcb** %9, align 8
  %40 = load i32, i32* @IDA_NSEG, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = add i64 4, %42
  %44 = lshr i64 %43, 2
  %45 = trunc i64 %44 to i32
  %46 = call i32 @htole16(i32 %45)
  %47 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %9, align 8
  %48 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %83, %36
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %50
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @htole32(i32 %60)
  %62 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %9, align 8
  %63 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i8* %61, i8** %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @htole32(i32 %74)
  %76 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %9, align 8
  %77 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i8* %75, i8** %82, align 8
  br label %83

83:                                               ; preds = %54
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %50

86:                                               ; preds = %50
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %9, align 8
  %89 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.ida_qcb*, %struct.ida_qcb** %11, align 8
  %92 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 128
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %86
  %97 = load %struct.ida_qcb*, %struct.ida_qcb** %11, align 8
  %98 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 128
  switch i32 %100, label %107 [
    i32 128, label %101
    i32 129, label %105
  ]

101:                                              ; preds = %96
  %102 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %103 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %12, align 4
  br label %117

105:                                              ; preds = %96
  %106 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  store i32 %106, i32* %12, align 4
  br label %117

107:                                              ; preds = %96
  %108 = load %struct.ida_qcb*, %struct.ida_qcb** %11, align 8
  %109 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 128
  %112 = load i32, i32* @DMA_DATA_OUT, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @KASSERT(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %116 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %107, %105, %101
  %118 = load %struct.ida_softc*, %struct.ida_softc** %10, align 8
  %119 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ida_qcb*, %struct.ida_qcb** %11, align 8
  %122 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @bus_dmamap_sync(i32 %120, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %117, %86
  %127 = load %struct.ida_softc*, %struct.ida_softc** %10, align 8
  %128 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ida_softc*, %struct.ida_softc** %10, align 8
  %131 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %134 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @bus_dmamap_sync(i32 %129, i32 %132, i32 %135)
  %137 = load %struct.ida_softc*, %struct.ida_softc** %10, align 8
  %138 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %137, i32 0, i32 1
  %139 = load %struct.ida_qcb*, %struct.ida_qcb** %11, align 8
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @link, i32 0, i32 0), align 4
  %141 = call i32 @STAILQ_INSERT_TAIL(i32* %138, %struct.ida_qcb* %139, i32 %140)
  %142 = load %struct.ida_softc*, %struct.ida_softc** %10, align 8
  %143 = call i32 @ida_start(%struct.ida_softc* %142)
  %144 = load i32, i32* @IDA_QFROZEN, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.ida_softc*, %struct.ida_softc** %10, align 8
  %147 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %126, %29
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @ida_done(%struct.ida_softc*, %struct.ida_qcb*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ida_qcb*, i32) #1

declare dso_local i32 @ida_start(%struct.ida_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
