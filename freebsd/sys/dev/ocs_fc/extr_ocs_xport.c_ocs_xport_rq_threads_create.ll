; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_xport.c_ocs_xport_rq_threads_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_xport.c_ocs_xport_rq_threads_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"number of RQ threads %d\0A\00", align 1
@OCS_M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"memory allocation failure\0A\00", align 1
@OCS_HW_RQ_NUM_HDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ocs_unsol_rq:%d:%d\00", align 1
@ocs_unsol_rq_thread = common dso_local global i32 0, align 4
@OCS_THREAD_RUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"ocs_thread_create failed: %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @ocs_xport_rq_threads_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_xport_rq_threads_create(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ocs_log_debug(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %133

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @OCS_M_ZERO, align 4
  %28 = call %struct.TYPE_14__* @ocs_malloc(%struct.TYPE_13__* %22, i32 %26, i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = icmp eq %struct.TYPE_14__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = call i32 (%struct.TYPE_13__*, i8*, ...) @ocs_log_err(%struct.TYPE_13__* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %133

38:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %126, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %129

43:                                               ; preds = %39
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 4
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = load i32, i32* @OCS_HW_RQ_NUM_HDR, align 4
  %54 = call i32* @ocs_cbuf_alloc(%struct.TYPE_13__* %52, i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  store i32* %54, i32** %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %43
  br label %130

72:                                               ; preds = %43
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ocs_snprintf(i32 %80, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i32, i32* @ocs_unsol_rq_thread, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %107
  %109 = load i32, i32* @OCS_THREAD_RUN, align 4
  %110 = call i32 @ocs_thread_create(%struct.TYPE_13__* %86, i32* %93, i32 %94, i32 %102, %struct.TYPE_14__* %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %72
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (%struct.TYPE_13__*, i8*, ...) @ocs_log_err(%struct.TYPE_13__* %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  br label %130

117:                                              ; preds = %72
  %118 = load i32, i32* @TRUE, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i32 %118, i32* %125, align 8
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %39

129:                                              ; preds = %39
  store i32 0, i32* %3, align 4
  br label %133

130:                                              ; preds = %113, %71
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = call i32 @ocs_xport_rq_threads_teardown(%struct.TYPE_12__* %131)
  store i32 -1, i32* %3, align 4
  br label %133

133:                                              ; preds = %130, %129, %35, %20
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @ocs_log_debug(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @ocs_malloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32* @ocs_cbuf_alloc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ocs_snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ocs_thread_create(%struct.TYPE_13__*, i32*, i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ocs_xport_rq_threads_teardown(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
