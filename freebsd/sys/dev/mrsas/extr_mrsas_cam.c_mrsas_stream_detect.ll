; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_stream_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_stream_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.mrsas_mpt_cmd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.IO_REQUEST_INFO = type { i64, i64, i64, i64 }

@MAX_STREAMS_TRACKED = common dso_local global i32 0, align 4
@BITS_PER_INDEX_STREAM = common dso_local global i32 0, align 4
@STREAM_MASK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ZERO_LAST_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrsas_softc*, %struct.mrsas_mpt_cmd*, %struct.IO_REQUEST_INFO*)* @mrsas_stream_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_stream_detect(%struct.mrsas_softc* %0, %struct.mrsas_mpt_cmd* %1, %struct.IO_REQUEST_INFO* %2) #0 {
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca %struct.mrsas_mpt_cmd*, align 8
  %6 = alloca %struct.IO_REQUEST_INFO*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store %struct.mrsas_mpt_cmd* %1, %struct.mrsas_mpt_cmd** %5, align 8
  store %struct.IO_REQUEST_INFO* %2, %struct.IO_REQUEST_INFO** %6, align 8
  %18 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %19 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %22 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %23, i64 %24
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %8, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i64* %28, i64** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %144, %3
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @MAX_STREAMS_TRACKED, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %147

33:                                               ; preds = %29
  %34 = load i64*, i64** %9, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %38 = mul nsw i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = lshr i64 %35, %39
  %41 = load i64, i64* @STREAM_MASK, align 8
  %42 = and i64 %40, %41
  store i64 %42, i64* %10, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %17, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %143

52:                                               ; preds = %33
  %53 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %54 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %60, label %143

60:                                               ; preds = %52
  %61 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %62 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 32
  %68 = icmp sle i64 %63, %67
  br i1 %68, label %69, label %143

69:                                               ; preds = %60
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %74 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %143

77:                                               ; preds = %69
  %78 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %79 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %87 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %85
  br label %144

94:                                               ; preds = %90, %77
  %95 = load i32, i32* @TRUE, align 4
  %96 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %95, i32* %101, align 4
  %102 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %103 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %106 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %113 = mul nsw i32 %111, %112
  %114 = shl i32 1, %113
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %14, align 8
  %117 = load i64*, i64** %9, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %14, align 8
  %120 = and i64 %118, %119
  %121 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %122 = zext i32 %121 to i64
  %123 = shl i64 %120, %122
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* @STREAM_MASK, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %127 = mul nsw i32 %125, %126
  %128 = zext i32 %127 to i64
  %129 = shl i64 %124, %128
  store i64 %129, i64* %13, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %13, align 8
  %134 = or i64 %132, %133
  %135 = xor i64 %134, -1
  %136 = and i64 %131, %135
  store i64 %136, i64* %12, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %11, align 8
  %139 = or i64 %137, %138
  %140 = load i64, i64* %10, align 8
  %141 = or i64 %139, %140
  %142 = load i64*, i64** %9, align 8
  store i64 %141, i64* %142, align 8
  br label %185

143:                                              ; preds = %69, %60, %52, %33
  br label %144

144:                                              ; preds = %143, %93
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %29

147:                                              ; preds = %29
  %148 = load i64*, i64** %9, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @MAX_STREAMS_TRACKED, align 4
  %151 = sub nsw i32 %150, 1
  %152 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %153 = mul nsw i32 %151, %152
  %154 = zext i32 %153 to i64
  %155 = lshr i64 %149, %154
  %156 = load i64, i64* @STREAM_MASK, align 8
  %157 = and i64 %155, %156
  store i64 %157, i64* %10, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load i64, i64* %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %161
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %17, align 8
  %163 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %164 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %169 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %172 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %170, %173
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load i64*, i64** %9, align 8
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @ZERO_LAST_STREAM, align 8
  %180 = and i64 %178, %179
  %181 = shl i64 %180, 4
  %182 = load i64, i64* %10, align 8
  %183 = or i64 %181, %182
  %184 = load i64*, i64** %9, align 8
  store i64 %183, i64* %184, align 8
  br label %185

185:                                              ; preds = %147, %94
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
