; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_sport.c_ocs_port_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_sport.c_ocs_port_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"OCS_HW_PORT_ALLOC_OK\0A\00", align 1
@OCS_EVT_SPORT_ALLOC_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"OCS_HW_PORT_ALLOC_FAIL\0A\00", align 1
@OCS_EVT_SPORT_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"OCS_HW_PORT_ATTACH_OK\0A\00", align 1
@OCS_EVT_SPORT_ATTACH_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"OCS_HW_PORT_ATTACH_FAIL\0A\00", align 1
@OCS_EVT_SPORT_ATTACH_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"OCS_HW_PORT_FREE_OK\0A\00", align 1
@OCS_EVT_SPORT_FREE_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"OCS_HW_PORT_FREE_FAIL\0A\00", align 1
@OCS_EVT_SPORT_FREE_FAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"unknown event %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_port_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %56 [
    i32 132, label %14
    i32 133, label %21
    i32 130, label %28
    i32 131, label %35
    i32 128, label %42
    i32 129, label %49
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @ocs_log_debug(i32* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* @OCS_EVT_SPORT_ALLOC_OK, align 4
  %20 = call i32 @ocs_sm_post_event(i32* %18, i32 %19, i32* null)
  br label %60

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @ocs_log_debug(i32* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @OCS_EVT_SPORT_ALLOC_FAIL, align 4
  %27 = call i32 @ocs_sm_post_event(i32* %25, i32 %26, i32* null)
  br label %60

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @ocs_log_debug(i32* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @OCS_EVT_SPORT_ATTACH_OK, align 4
  %34 = call i32 @ocs_sm_post_event(i32* %32, i32 %33, i32* null)
  br label %60

35:                                               ; preds = %3
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @ocs_log_debug(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* @OCS_EVT_SPORT_ATTACH_FAIL, align 4
  %41 = call i32 @ocs_sm_post_event(i32* %39, i32 %40, i32* null)
  br label %60

42:                                               ; preds = %3
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ocs_log_debug(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* @OCS_EVT_SPORT_FREE_OK, align 4
  %48 = call i32 @ocs_sm_post_event(i32* %46, i32 %47, i32* null)
  br label %60

49:                                               ; preds = %3
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @ocs_log_debug(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* @OCS_EVT_SPORT_FREE_FAIL, align 4
  %55 = call i32 @ocs_sm_post_event(i32* %53, i32 %54, i32* null)
  br label %60

56:                                               ; preds = %3
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ocs_log_test(i32* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %49, %42, %35, %28, %21, %14
  ret i32 0
}

declare dso_local i32 @ocs_log_debug(i32*, i8*) #1

declare dso_local i32 @ocs_sm_post_event(i32*, i32, i32*) #1

declare dso_local i32 @ocs_log_test(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
