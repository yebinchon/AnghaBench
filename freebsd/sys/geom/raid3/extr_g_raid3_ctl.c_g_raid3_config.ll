; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@G_RAID3_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Userland and kernel parts are out of sync.\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"configure\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rebuild\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Unknown verb.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid3_config(%struct.gctl_req* %0, %struct.g_class* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %10 = call i64* @gctl_get_paraml(%struct.gctl_req* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  store i64* %10, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %15 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %74

16:                                               ; preds = %3
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @G_RAID3_VERSION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %23 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %74

24:                                               ; preds = %16
  %25 = call i32 (...) @g_topology_unlock()
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %31 = load %struct.g_class*, %struct.g_class** %5, align 8
  %32 = call i32 @g_raid3_ctl_configure(%struct.gctl_req* %30, %struct.g_class* %31)
  br label %72

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %39 = load %struct.g_class*, %struct.g_class** %5, align 8
  %40 = call i32 @g_raid3_ctl_insert(%struct.gctl_req* %38, %struct.g_class* %39)
  br label %71

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %47 = load %struct.g_class*, %struct.g_class** %5, align 8
  %48 = call i32 @g_raid3_ctl_rebuild(%struct.gctl_req* %46, %struct.g_class* %47)
  br label %70

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %55 = load %struct.g_class*, %struct.g_class** %5, align 8
  %56 = call i32 @g_raid3_ctl_remove(%struct.gctl_req* %54, %struct.g_class* %55)
  br label %69

57:                                               ; preds = %49
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %63 = load %struct.g_class*, %struct.g_class** %5, align 8
  %64 = call i32 @g_raid3_ctl_stop(%struct.gctl_req* %62, %struct.g_class* %63)
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %67 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %37
  br label %72

72:                                               ; preds = %71, %29
  %73 = call i32 (...) @g_topology_lock()
  br label %74

74:                                               ; preds = %72, %21, %13
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_raid3_ctl_configure(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_raid3_ctl_insert(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_raid3_ctl_rebuild(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_raid3_ctl_remove(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_raid3_ctl_stop(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
