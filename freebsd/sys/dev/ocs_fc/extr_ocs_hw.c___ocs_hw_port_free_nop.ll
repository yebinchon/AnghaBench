; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c___ocs_hw_port_free_nop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c___ocs_hw_port_free_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@__ocs_hw_port_realloc_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ocs_hw_async_call failed\0A\00", align 1
@__ocs_hw_port_freed = common dso_local global i32 0, align 4
@__ocs_hw_port_free_report_fail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i32, i8*)* @__ocs_hw_port_free_nop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__ocs_hw_port_free_nop(%struct.TYPE_8__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = call i32 @smtrace(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %39 [
    i32 130, label %17
    i32 128, label %29
    i32 129, label %34
  ]

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = load i32, i32* @__ocs_hw_port_realloc_cb, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = call i32 @ocs_hw_async_call(%struct.TYPE_10__* %18, i32 %19, %struct.TYPE_9__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ocs_log_err(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %17
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i32, i32* @__ocs_hw_port_freed, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @ocs_sm_transition(%struct.TYPE_8__* %30, i32 %31, i8* %32)
  br label %40

34:                                               ; preds = %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = load i32, i32* @__ocs_hw_port_free_report_fail, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @ocs_sm_transition(%struct.TYPE_8__* %35, i32 %36, i8* %37)
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %34, %29, %28
  ret i8* null
}

declare dso_local i32 @smtrace(i8*) #1

declare dso_local i32 @ocs_hw_async_call(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_sm_transition(%struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
