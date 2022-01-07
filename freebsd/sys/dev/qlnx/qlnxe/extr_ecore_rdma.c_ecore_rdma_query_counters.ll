; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_query_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_query_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_counters_out_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ecore_hwfn = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_17__ = type { i64*, i32 }
%struct.TYPE_16__ = type { i64*, i32 }
%struct.TYPE_15__ = type { i64*, i32 }
%struct.TYPE_14__ = type { i64*, i32 }
%struct.TYPE_13__ = type { i64*, i32 }
%struct.TYPE_12__ = type { i64*, i32 }
%struct.TYPE_11__ = type { i64*, i32 }
%struct.TYPE_10__ = type { i64*, i32 }

@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_query_counters(i8* %0, %struct.ecore_rdma_counters_out_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_rdma_counters_out_params*, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_rdma_counters_out_params* %1, %struct.ecore_rdma_counters_out_params** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %10, %struct.ecore_hwfn** %6, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = icmp ne %struct.TYPE_18__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %181

17:                                               ; preds = %2
  %18 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %19 = call i32 @OSAL_MEMSET(%struct.ecore_rdma_counters_out_params* %18, i32 0, i32 96)
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %7, align 8
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load i64*, i64** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @OSAL_BITMAP_WEIGHT(i64* %32, i32 %33)
  %35 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %36 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %35, i32 0, i32 15
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %39 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %40, i32 0, i32 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  store i64* %45, i64** %7, align 8
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %47 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  %52 = load i64*, i64** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @OSAL_BITMAP_WEIGHT(i64* %52, i32 %53)
  %55 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %56 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %55, i32 0, i32 14
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %59 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %61 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %60, i32 0, i32 0
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  store i64* %65, i64** %7, align 8
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %67 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %66, i32 0, i32 0
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %8, align 4
  %72 = load i64*, i64** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @OSAL_BITMAP_WEIGHT(i64* %72, i32 %73)
  %75 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %76 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %75, i32 0, i32 13
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %79 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %81 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %80, i32 0, i32 0
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  store i64* %85, i64** %7, align 8
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %87 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %8, align 4
  %92 = load i64*, i64** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i8* @OSAL_BITMAP_WEIGHT(i64* %92, i32 %93)
  %95 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %96 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %95, i32 0, i32 12
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %99 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %101 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %100, i32 0, i32 0
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  store i64* %105, i64** %7, align 8
  %106 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %107 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %106, i32 0, i32 0
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %8, align 4
  %112 = load i64*, i64** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i8* @OSAL_BITMAP_WEIGHT(i64* %112, i32 %113)
  %115 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %116 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %115, i32 0, i32 11
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %119 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %121 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %120, i32 0, i32 0
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  store i64* %125, i64** %7, align 8
  %126 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %127 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %126, i32 0, i32 0
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %8, align 4
  %132 = load i64*, i64** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i8* @OSAL_BITMAP_WEIGHT(i64* %132, i32 %133)
  %135 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %136 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %135, i32 0, i32 10
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %139 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %141 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %140, i32 0, i32 0
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  store i64* %145, i64** %7, align 8
  %146 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %147 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %146, i32 0, i32 0
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %8, align 4
  %152 = load i64*, i64** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i8* @OSAL_BITMAP_WEIGHT(i64* %152, i32 %153)
  %155 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %156 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %155, i32 0, i32 9
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %159 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 8
  %160 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %161 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %160, i32 0, i32 0
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  store i64* %165, i64** %7, align 8
  %166 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %167 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %166, i32 0, i32 0
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %8, align 4
  %172 = load i64*, i64** %7, align 8
  %173 = load i32, i32* %8, align 4
  %174 = call i8* @OSAL_BITMAP_WEIGHT(i64* %172, i32 %173)
  %175 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %176 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %175, i32 0, i32 8
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.ecore_rdma_counters_out_params*, %struct.ecore_rdma_counters_out_params** %5, align 8
  %179 = getelementptr inbounds %struct.ecore_rdma_counters_out_params, %struct.ecore_rdma_counters_out_params* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %17, %15
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_rdma_counters_out_params*, i32, i32) #1

declare dso_local i8* @OSAL_BITMAP_WEIGHT(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
