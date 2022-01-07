; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_drive_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_drive_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"drive progress: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"extra arguments\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"drive required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to fetch info for drive %u\00", align 1
@MFI_PD_PROGRESS_REBUILD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Rebuild\00", align 1
@MFI_PD_PROGRESS_PATROL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Patrol Read\00", align 1
@MFI_PD_PROGRESS_CLEAR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"No activity in progress for drive %s.\0A\00", align 1
@MFI_DNAME_DEVICE_ID = common dso_local global i32 0, align 4
@MFI_DNAME_HONOR_OPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @drive_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drive_progress(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_pd_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 2
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %107

19:                                               ; preds = %2
  %20 = load i32, i32* @mfi_unit, align 4
  %21 = load i32, i32* @O_RDWR, align 4
  %22 = call i32 @mfi_open(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %8, align 4
  %27 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %107

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @mfi_lookup_drive(i32 %30, i8* %33, i32* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %107

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @mfi_pd_get_info(i32 %42, i32 %43, %struct.mfi_pd_info* %6, i32* null)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @errno, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %107

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @close(i32 %54)
  %56 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MFI_PD_PROGRESS_REBUILD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = call i32 @mfi_display_progress(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %64)
  br label %66

66:                                               ; preds = %62, %53
  %67 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MFI_PD_PROGRESS_PATROL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = call i32 @mfi_display_progress(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %75)
  br label %77

77:                                               ; preds = %73, %66
  %78 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MFI_PD_PROGRESS_CLEAR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = call i32 @mfi_display_progress(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %86)
  br label %88

88:                                               ; preds = %84, %77
  %89 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MFI_PD_PROGRESS_REBUILD, align 4
  %93 = load i32, i32* @MFI_PD_PROGRESS_PATROL, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @MFI_PD_PROGRESS_CLEAR, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %91, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @MFI_DNAME_DEVICE_ID, align 4
  %102 = load i32, i32* @MFI_DNAME_HONOR_OPTS, align 4
  %103 = or i32 %101, %102
  %104 = call i8* @mfi_drive_name(i32* null, i32 %100, i32 %103)
  %105 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %99, %88
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %46, %37, %25, %12
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @mfi_lookup_drive(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mfi_pd_get_info(i32, i32, %struct.mfi_pd_info*, i32*) #1

declare dso_local i32 @mfi_display_progress(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @mfi_drive_name(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
