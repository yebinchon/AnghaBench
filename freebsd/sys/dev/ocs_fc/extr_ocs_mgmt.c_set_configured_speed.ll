; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_configured_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_configured_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"unsupported speed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Taking port offline\0A\00", align 1
@OCS_XPORT_PORT_OFFLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Port offline failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Setting port to speed %d\0A\00", align 1
@OCS_HW_LINK_SPEED = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Speed set failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Bringing port online\0A\00", align 1
@OCS_XPORT_PORT_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_configured_speed(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @ocs_strtoul(i8* %12, i32* null, i32 0)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 2000
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 4000
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 8000
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 16000
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 32000
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_test(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 1, i32* %4, align 4
  br label %77

35:                                               ; preds = %28, %25, %22, %19, %16, %3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_debug(%struct.TYPE_5__* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OCS_XPORT_PORT_OFFLINE, align 4
  %42 = call i32 @ocs_xport_control(i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_test(%struct.TYPE_5__* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %75

48:                                               ; preds = %35
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_debug(%struct.TYPE_5__* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* @OCS_HW_LINK_SPEED, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @ocs_hw_set(i32* %53, i32 %54, i32 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_test(%struct.TYPE_5__* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %48
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_debug(%struct.TYPE_5__* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @OCS_XPORT_PORT_ONLINE, align 4
  %70 = call i32 @ocs_xport_control(i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %63
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %31
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @ocs_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @ocs_xport_control(i32, i32) #1

declare dso_local i64 @ocs_hw_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
