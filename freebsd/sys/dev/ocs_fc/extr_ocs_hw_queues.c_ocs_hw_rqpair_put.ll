; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64*, i32, i32, %struct.TYPE_21__**, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__** }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"RQ_ID=%#x write failed\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"expected rq_tracker[%d][%d] buffer to be NULL\0A\00", align 1
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, %struct.TYPE_20__*)* @ocs_hw_rqpair_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_rqpair_put(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca [2 x i64], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i64 %21
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %6, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i64 %30
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %7, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %34, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %44, i64 %45
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %9, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ocs_addr32_hi(i32 %53)
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %54, i64* %55, align 16
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ocs_addr32_lo(i32 %61)
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %62, i64* %63, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @ocs_addr32_hi(i32 %69)
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %70, i64* %71, align 16
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @ocs_addr32_lo(i32 %77)
  %79 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %78, i64* %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = call i32 @sli_queue_lock(%struct.TYPE_18__* %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = call i32 @sli_queue_lock(%struct.TYPE_18__* %82)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %88 = bitcast i64* %87 to i8*
  %89 = call i64 @_sli_queue_write(i32* %85, %struct.TYPE_18__* %86, i8* %88)
  store i64 %89, i64* %13, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %94 = bitcast i64* %93 to i8*
  %95 = call i64 @_sli_queue_write(i32* %91, %struct.TYPE_18__* %92, i8* %94)
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %2
  %99 = load i64, i64* %13, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98, %2
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ocs_log_err(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %110 = call i32 @sli_queue_unlock(%struct.TYPE_18__* %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = call i32 @sli_queue_unlock(%struct.TYPE_18__* %111)
  %113 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %113, i64* %3, align 8
  br label %147

114:                                              ; preds = %98
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* %13, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @ocs_hw_assert(i32 %118)
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %122, i64 %123
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = icmp eq %struct.TYPE_20__* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %114
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %130, align 8
  %132 = load i64, i64* %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %131, i64 %132
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %133, align 8
  br label %141

134:                                              ; preds = %114
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @ocs_log_test(i32 %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %138, i64 %139)
  br label %141

141:                                              ; preds = %134, %127
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %143 = call i32 @sli_queue_unlock(%struct.TYPE_18__* %142)
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %145 = call i32 @sli_queue_unlock(%struct.TYPE_18__* %144)
  %146 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %146, i64* %3, align 8
  br label %147

147:                                              ; preds = %141, %101
  %148 = load i64, i64* %3, align 8
  ret i64 %148
}

declare dso_local i64 @ocs_addr32_hi(i32) #1

declare dso_local i64 @ocs_addr32_lo(i32) #1

declare dso_local i32 @sli_queue_lock(%struct.TYPE_18__*) #1

declare dso_local i64 @_sli_queue_write(i32*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @ocs_log_err(i32, i8*, i32) #1

declare dso_local i32 @sli_queue_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @ocs_hw_assert(i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
