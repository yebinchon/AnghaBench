; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_reque_xri.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_reque_xri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32*, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_15__*, i32*, i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }

@OCS_HW_IO_DNRX_REQUEUE = common dso_local global i32 0, align 4
@OCS_HW_REQUE_XRI_REGTAG = common dso_local global i32 0, align 4
@SLI4_CQ_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"requeue_xri WQE error\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"sli_queue_write reque xri failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_reque_xri(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %8 = call i32 @ocs_hw_rqpair_auto_xfer_rdy_buffer_post(%struct.TYPE_18__* %6, %struct.TYPE_19__* %7, i32 1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = call i32 @ocs_list_add_tail(i32* %13, %struct.TYPE_19__* %14)
  store i32 -1, i32* %5, align 4
  br label %110

16:                                               ; preds = %2
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @OCS_HW_IO_DNRX_REQUEUE, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OCS_HW_REQUE_XRI_REGTAG, align 4
  %37 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %38 = call i64 @sli_requeue_xri_wqe(%struct.TYPE_20__* %23, i32 %27, i32 %32, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %16
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ocs_pool_put(i32 %43, i32* %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = call i32 @ocs_list_add_tail(i32* %55, %struct.TYPE_19__* %56)
  store i32 -1, i32* %5, align 4
  br label %110

58:                                               ; preds = %16
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = icmp eq %struct.TYPE_15__* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = call %struct.TYPE_15__* @ocs_hw_queue_next_wq(%struct.TYPE_18__* %64, %struct.TYPE_19__* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %68, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = icmp ne %struct.TYPE_15__* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @ocs_hw_assert(i32 %73)
  br label %75

75:                                               ; preds = %63, %58
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = call i32 @OCS_STAT(i32 %85)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = call i32 @OCS_STAT(i32 %92)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = call i32 @hw_wq_write(%struct.TYPE_15__* %97, %struct.TYPE_16__* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %75
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  store i32 -1, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %75
  br label %110

110:                                              ; preds = %109, %40, %11
  ret i32 0
}

declare dso_local i32 @ocs_hw_rqpair_auto_xfer_rdy_buffer_post(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @sli_requeue_xri_wqe(%struct.TYPE_20__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ocs_pool_put(i32, i32*) #1

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local %struct.TYPE_15__* @ocs_hw_queue_next_wq(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ocs_hw_assert(i32) #1

declare dso_local i32 @OCS_STAT(i32) #1

declare dso_local i32 @hw_wq_write(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
