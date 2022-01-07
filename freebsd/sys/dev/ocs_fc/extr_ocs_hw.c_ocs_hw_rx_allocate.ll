; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_rx_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_rx_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32*, %struct.TYPE_12__**, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, i32*, %struct.TYPE_9__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@OCS_HW_RQ_SIZE_HDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"ocs_hw_rx_buffer_alloc hdr_buf failed\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"rq[%2d] rq_id %02d header  %4d by %4d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ocs_hw_rx_buffer_alloc fb_buf failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"rq[%2d] rq_id %02d default %4d by %4d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_rx_allocate(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load i64, i64* @OCS_HW_RQ_SIZE_HDR, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %102, %1
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %105

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %28, i64 %29
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %7, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i8* @ocs_hw_rx_buffer_alloc(%struct.TYPE_11__* %32, i64 %33, i32 %36, i64 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @ocs_log_err(i32* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %49, i64* %5, align 8
  br label %105

50:                                               ; preds = %25
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @ocs_log_debug(i32* %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %59, i32 %62, i64 %63)
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i8* @ocs_hw_rx_buffer_alloc(%struct.TYPE_11__* %67, i64 %68, i32 %71, i64 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %50
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @ocs_log_err(i32* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %84, i64* %5, align 8
  br label %105

85:                                               ; preds = %50
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @ocs_log_debug(i32* %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %89, i32 %94, i32 %97, i64 %98)
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %85
  %103 = load i64, i64* %4, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %4, align 8
  br label %19

105:                                              ; preds = %81, %46, %19
  %106 = load i64, i64* %5, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  br label %112

110:                                              ; preds = %105
  %111 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i64 [ %109, %108 ], [ %111, %110 ]
  ret i64 %113
}

declare dso_local i8* @ocs_hw_rx_buffer_alloc(%struct.TYPE_11__*, i64, i32, i64) #1

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @ocs_log_debug(i32*, i8*, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
