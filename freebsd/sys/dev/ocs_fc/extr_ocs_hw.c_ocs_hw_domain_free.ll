; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_domain_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bad parameter(s) hw=%p domain=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Chip is in an error state - reset needed\0A\00", align 1
@OCS_EVT_HW_DOMAIN_REQ_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_domain_free(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32* [ %19, %16 ], [ null, %20 ]
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = call i32 @ocs_log_err(i32* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %23, %struct.TYPE_8__* %24)
  %26 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %44

27:                                               ; preds = %10
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = call i64 @sli_fw_error_status(i32* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ocs_log_crit(i32* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %27
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* @OCS_EVT_HW_DOMAIN_REQ_FREE, align 4
  %42 = call i32 @ocs_sm_post_event(i32* %40, i32 %41, i32* null)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %32, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ocs_log_err(i32*, i8*, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i64 @sli_fw_error_status(i32*) #1

declare dso_local i32 @ocs_log_crit(i32*, i8*) #1

declare dso_local i32 @ocs_sm_post_event(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
