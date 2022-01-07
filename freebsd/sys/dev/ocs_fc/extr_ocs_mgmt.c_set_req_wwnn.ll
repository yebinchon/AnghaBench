; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_req_wwnn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_req_wwnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid WWNN: %s\0A\00", align 1
@OCS_XPORT_WWNN_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"OCS_XPORT_WWNN_SET failed: %d\0A\00", align 1
@OCS_XPORT_PORT_OFFLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"port offline failed : %d\0A\00", align 1
@OCS_XPORT_PORT_ONLINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"port online failed : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_req_wwnn(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @ocs_strcasecmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %23

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @parse_wwn(i8* %15, i64* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (%struct.TYPE_4__*, i8*, ...) @ocs_log_test(%struct.TYPE_4__* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 1, i32* %4, align 4
  br label %63

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %13
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OCS_XPORT_WWNN_SET, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 (i32, i32, ...) @ocs_xport_control(i32 %26, i32 %27, i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (%struct.TYPE_4__*, i8*, ...) @ocs_log_test(%struct.TYPE_4__* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %63

37:                                               ; preds = %23
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OCS_XPORT_PORT_OFFLINE, align 4
  %42 = call i32 (i32, i32, ...) @ocs_xport_control(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (%struct.TYPE_4__*, i8*, ...) @ocs_log_test(%struct.TYPE_4__* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @OCS_XPORT_PORT_ONLINE, align 4
  %54 = call i32 (i32, i32, ...) @ocs_xport_control(i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (%struct.TYPE_4__*, i8*, ...) @ocs_log_test(%struct.TYPE_4__* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %49
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %32, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @ocs_strcasecmp(i8*, i8*) #1

declare dso_local i64 @parse_wwn(i8*, i64*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @ocs_xport_control(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
