; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_configured_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_configured_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Setting port to %s\0A\00", align 1
@OCS_XPORT_PORT_OFFLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Setting port to offline failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@OCS_XPORT_PORT_ONLINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Setting port to online failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unsupported link state \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*)* @set_configured_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_configured_link_state(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @ocs_strcasecmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @ocs_log_debug(%struct.TYPE_5__* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @OCS_XPORT_PORT_OFFLINE, align 4
  %20 = call i32 @ocs_xport_control(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_test(%struct.TYPE_5__* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %12
  br label %51

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @ocs_strcasecmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @ocs_log_debug(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OCS_XPORT_PORT_ONLINE, align 4
  %39 = call i32 @ocs_xport_control(i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_test(%struct.TYPE_5__* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %31
  br label %50

46:                                               ; preds = %27
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (%struct.TYPE_5__*, i8*, ...) @ocs_log_test(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %45
  br label %51

51:                                               ; preds = %50, %26
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @ocs_strcasecmp(i8*, i8*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @ocs_xport_control(i32, i32) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_5__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
