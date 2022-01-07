; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_fast_intr_rxtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_fast_intr_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (i32)*, i32, i32, %struct.grouptask* }
%struct.grouptask = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_14__*, i32 (i8*, i64, i32)*, %struct.TYPE_16__*, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.grouptask, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i64*, i32, i32, %struct.TYPE_15__*, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { i32 }

@iflib_started = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@fast_intrs = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@IFC_LEGACY = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@IFLIB_HAS_RXCQ = common dso_local global i32 0, align 4
@rx_intr_enables = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @iflib_fast_intr_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_fast_intr_rxtx(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.grouptask*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %4, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load %struct.grouptask*, %struct.grouptask** %19, align 8
  store %struct.grouptask* %20, %struct.grouptask** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %7, align 8
  %26 = load i32, i32* @iflib_started, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %29, i32* %2, align 4
  br label %176

30:                                               ; preds = %1
  %31 = load i32, i32* @fast_intrs, align 4
  %32 = call i32 @DBG_COUNTER_INC(i32 %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = icmp ne i32 (i32)* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %40(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %2, align 4
  br label %176

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %6, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IFC_LEGACY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @MPASS(i32 %70)
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %123, %52
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %126

78:                                               ; preds = %72
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %13, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i64 %89
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %8, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %102 = call i32 @bus_dmamap_sync(i32 %95, i32 %100, i32 %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %104, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i32 %105(i8* %106, i64 %107, i32 0)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %78
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 1, i32* %14, align 4
  br label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @IFDI_TX_QUEUE_INTR_ENABLE(%struct.TYPE_19__* %115, i64 %116)
  br label %118

118:                                              ; preds = %114, %113
  br label %123

119:                                              ; preds = %78
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = call i32 @GROUPTASK_ENQUEUE(%struct.grouptask* %121)
  br label %123

123:                                              ; preds = %119, %118
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %72

126:                                              ; preds = %72
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @IFLIB_HAS_RXCQ, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %11, align 4
  br label %146

139:                                              ; preds = %126
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %139, %135
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %149 = load i32, i32* %11, align 4
  %150 = call i64 @iflib_rxd_avail(%struct.TYPE_19__* %147, %struct.TYPE_17__* %148, i32 %149, i32 1)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load %struct.grouptask*, %struct.grouptask** %5, align 8
  %154 = call i32 @GROUPTASK_ENQUEUE(%struct.grouptask* %153)
  br label %168

155:                                              ; preds = %146
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 1, i32* %14, align 4
  br label %165

159:                                              ; preds = %155
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @IFDI_RX_QUEUE_INTR_ENABLE(%struct.TYPE_19__* %160, i32 %163)
  br label %165

165:                                              ; preds = %159, %158
  %166 = load i32, i32* @rx_intr_enables, align 4
  %167 = call i32 @DBG_COUNTER_INC(i32 %166)
  br label %168

168:                                              ; preds = %165, %152
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %173 = call i32 @IFDI_INTR_ENABLE(%struct.TYPE_19__* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %49, %28
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @DBG_COUNTER_INC(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @IFDI_TX_QUEUE_INTR_ENABLE(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @GROUPTASK_ENQUEUE(%struct.grouptask*) #1

declare dso_local i64 @iflib_rxd_avail(%struct.TYPE_19__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @IFDI_RX_QUEUE_INTR_ENABLE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @IFDI_INTR_ENABLE(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
