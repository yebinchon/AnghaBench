; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_device.c___ocs_d_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_device.c___ocs_d_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [18 x i8] c"[%s] %-20s %-20s\0A\00", align 1
@OCS_NODE_SHUTDOWN_DEFAULT = common dso_local global i32 0, align 4
@__ocs_d_initiate_shutdown = common dso_local global i32 0, align 4
@OCS_NODE_SHUTDOWN_EXPLICIT_LOGO = common dso_local global i32 0, align 4
@OCS_NODE_SHUTDOWN_IMPLICIT_LOGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_9__*, i32, i8*)* @__ocs_d_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__ocs_d_common(i8* %0, %struct.TYPE_9__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = call i32 @ocs_assert(%struct.TYPE_9__* %11, i32* null)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %17 = call i32 @ocs_assert(%struct.TYPE_9__* %16, i32* null)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %10, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = call i32 @ocs_assert(%struct.TYPE_9__* %21, i32* null)
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %69 [
    i32 130, label %24
    i32 129, label %39
    i32 128, label %54
  ]

24:                                               ; preds = %4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ocs_sm_event_name(i32 %30)
  %32 = call i32 @ocs_log_debug(%struct.TYPE_9__* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29, i32 %31)
  %33 = load i32, i32* @OCS_NODE_SHUTDOWN_DEFAULT, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = load i32, i32* @__ocs_d_initiate_shutdown, align 4
  %38 = call i32 @ocs_node_transition(%struct.TYPE_9__* %36, i32 %37, i32* null)
  br label %75

39:                                               ; preds = %4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ocs_sm_event_name(i32 %45)
  %47 = call i32 @ocs_log_debug(%struct.TYPE_9__* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %44, i32 %46)
  %48 = load i32, i32* @OCS_NODE_SHUTDOWN_EXPLICIT_LOGO, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = load i32, i32* @__ocs_d_initiate_shutdown, align 4
  %53 = call i32 @ocs_node_transition(%struct.TYPE_9__* %51, i32 %52, i32* null)
  br label %75

54:                                               ; preds = %4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ocs_sm_event_name(i32 %60)
  %62 = call i32 @ocs_log_debug(%struct.TYPE_9__* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %59, i32 %61)
  %63 = load i32, i32* @OCS_NODE_SHUTDOWN_IMPLICIT_LOGO, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = load i32, i32* @__ocs_d_initiate_shutdown, align 4
  %68 = call i32 @ocs_node_transition(%struct.TYPE_9__* %66, i32 %67, i32* null)
  br label %75

69:                                               ; preds = %4
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @__ocs_node_common(i8* %70, %struct.TYPE_9__* %71, i32 %72, i8* %73)
  br label %75

75:                                               ; preds = %69, %54, %39, %24
  ret i8* null
}

declare dso_local i32 @ocs_assert(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_9__*, i8*, i32, i8*, i32) #1

declare dso_local i32 @ocs_sm_event_name(i32) #1

declare dso_local i32 @ocs_node_transition(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @__ocs_node_common(i8*, %struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
