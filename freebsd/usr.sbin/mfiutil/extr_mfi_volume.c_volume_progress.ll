; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_volume_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_volume_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ld_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"volume progress: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"extra arguments\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"volume required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Invalid volume: %s\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to fetch info for volume %s\00", align 1
@MFI_LD_PROGRESS_CC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Consistency Check\00", align 1
@MFI_LD_PROGRESS_BGI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"Background Init\00", align 1
@MFI_LD_PROGRESS_FGI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Foreground Init\00", align 1
@MFI_LD_PROGRESS_RECON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"Reconstruction\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"No activity in progress for volume %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @volume_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volume_progress(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_ld_info, align 4
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
  %16 = select i1 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %124

19:                                               ; preds = %2
  %20 = load i32, i32* @mfi_unit, align 4
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @mfi_open(i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %7, align 4
  %27 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %124

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @mfi_lookup_volume(i32 %30, i8* %33, i32* %9)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32, i32* @errno, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %124

45:                                               ; preds = %29
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @mfi_ld_get_info(i32 %46, i32 %47, %struct.mfi_ld_info* %6, i32* null)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @errno, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @mfi_volume_name(i32 %52, i32 %53)
  %55 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %124

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MFI_LD_PROGRESS_CC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = call i32 @mfi_display_progress(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %68)
  br label %70

70:                                               ; preds = %66, %59
  %71 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MFI_LD_PROGRESS_BGI, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = call i32 @mfi_display_progress(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* %79)
  br label %81

81:                                               ; preds = %77, %70
  %82 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MFI_LD_PROGRESS_FGI, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = call i32 @mfi_display_progress(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %90)
  br label %92

92:                                               ; preds = %88, %81
  %93 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MFI_LD_PROGRESS_RECON, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = call i32 @mfi_display_progress(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %101)
  br label %103

103:                                              ; preds = %99, %92
  %104 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MFI_LD_PROGRESS_CC, align 4
  %108 = load i32, i32* @MFI_LD_PROGRESS_BGI, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @MFI_LD_PROGRESS_FGI, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @MFI_LD_PROGRESS_RECON, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %106, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i8* @mfi_volume_name(i32 %117, i32 %118)
  %120 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %116, %103
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @close(i32 %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %50, %36, %25, %12
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @mfi_lookup_volume(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mfi_ld_get_info(i32, i32, %struct.mfi_ld_info*, i32*) #1

declare dso_local i8* @mfi_volume_name(i32, i32) #1

declare dso_local i32 @mfi_display_progress(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
