; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_drive.c_drive_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_drive.c_drive_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.mpt_drive_list = type { i32 }

@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to find drive %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to fetch info for drive %u\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Drive %u is already in the desired state\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to set drive %u to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i8*)* @drive_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drive_set_state(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.mpt_drive_list*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @mpt_unit, align 4
  %16 = call i32 @mpt_open(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %13, align 4
  %21 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %96

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  %25 = call %struct.mpt_drive_list* @mpt_pd_list(i32 %24)
  store %struct.mpt_drive_list* %25, %struct.mpt_drive_list** %11, align 8
  %26 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %11, align 8
  %27 = icmp eq %struct.mpt_drive_list* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %5, align 4
  br label %96

32:                                               ; preds = %23
  %33 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %11, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @mpt_lookup_drive(%struct.mpt_drive_list* %33, i8* %34, i64* %12)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* @errno, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %96

44:                                               ; preds = %32
  %45 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %11, align 8
  %46 = call i32 @mpt_free_pd_list(%struct.mpt_drive_list* %45)
  %47 = load i32, i32* %14, align 4
  %48 = load i64, i64* %12, align 8
  %49 = call %struct.TYPE_6__* @mpt_pd_info(i32 %47, i64 %48, i32* null)
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %10, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = icmp eq %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i64, i64* %12, align 8
  %55 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %5, align 4
  br label %96

59:                                               ; preds = %44
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = call i32 @free(%struct.TYPE_6__* %69)
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @close(i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %5, align 4
  br label %96

74:                                               ; preds = %59
  %75 = load i32, i32* %14, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @mpt_raid_action(i32 %75, i64 %76, i32 0, i32 0, i64 %77, i32 0, i32* null, i32 0, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load i32, i32* %13, align 4
  %83 = load i64, i64* %12, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @warnc(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %83, i8* %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = call i32 @free(%struct.TYPE_6__* %86)
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @close(i32 %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %96

91:                                               ; preds = %74
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = call i32 @free(%struct.TYPE_6__* %92)
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @close(i32 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %81, %66, %52, %37, %28, %19
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local %struct.mpt_drive_list* @mpt_pd_list(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mpt_lookup_drive(%struct.mpt_drive_list*, i8*, i64*) #1

declare dso_local i32 @mpt_free_pd_list(%struct.mpt_drive_list*) #1

declare dso_local %struct.TYPE_6__* @mpt_pd_info(i32, i64, i32*) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @mpt_raid_action(i32, i64, i32, i32, i64, i32, i32*, i32, i32*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @warnc(i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
