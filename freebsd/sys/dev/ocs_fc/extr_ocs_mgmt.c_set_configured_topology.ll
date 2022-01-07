; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_configured_topology.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_configured_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@OCS_HW_TOPOLOGY_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Taking port offline\0A\00", align 1
@OCS_XPORT_PORT_OFFLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Port offline failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Setting port to topology %d\0A\00", align 1
@OCS_HW_TOPOLOGY = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Topology set failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Bringing port online\0A\00", align 1
@OCS_XPORT_PORT_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_configured_topology(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @ocs_strtoul(i8* %12, i32* null, i32 0)
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* @OCS_HW_TOPOLOGY_NONE, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_debug(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OCS_XPORT_PORT_OFFLINE, align 4
  %25 = call i32 @ocs_xport_control(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = call i32 @ocs_log_test(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %58

31:                                               ; preds = %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_debug(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* @OCS_HW_TOPOLOGY, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @ocs_hw_set(i32* %36, i32 %37, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = call i32 @ocs_log_test(%struct.TYPE_5__* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %31
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_debug(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OCS_XPORT_PORT_ONLINE, align 4
  %53 = call i32 @ocs_xport_control(i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @ocs_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @ocs_xport_control(i32, i32) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @ocs_hw_set(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
