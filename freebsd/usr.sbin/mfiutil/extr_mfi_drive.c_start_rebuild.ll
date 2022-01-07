; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_start_rebuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_start_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pd_info = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"start rebuild: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"extra arguments\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"drive required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to fetch info for drive %u\00", align 1
@MFI_PD_STATE_REBUILD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Drive %d is not in the REBUILD state\00", align 1
@MFI_DCMD_PD_REBUILD_START = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to start rebuild on drive %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @start_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_rebuild(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_pd_info, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 2
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load i32, i32* @mfi_unit, align 4
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = call i32 @mfi_open(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %9, align 4
  %28 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %84

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @mfi_lookup_drive(i32 %31, i8* %34, i8** %7)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %84

42:                                               ; preds = %30
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @mfi_pd_get_info(i32 %43, i8* %44, %struct.mfi_pd_info* %6, i32* null)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %84

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MFI_PD_STATE_REBUILD, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %3, align 4
  br label %84

65:                                               ; preds = %54
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %67 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 1
  %68 = call i32 @mbox_store_pdref(i32* %66, i32* %67)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @MFI_DCMD_PD_REBUILD_START, align 4
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %72 = call i64 @mfi_dcmd_command(i32 %69, i32 %70, i32* null, i32 0, i32* %71, i32 4, i32* null)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %84

81:                                               ; preds = %65
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @close(i32 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %74, %59, %47, %38, %26, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @mfi_lookup_drive(i32, i8*, i8**) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mfi_pd_get_info(i32, i8*, %struct.mfi_pd_info*, i32*) #1

declare dso_local i32 @mbox_store_pdref(i32*, i32*) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
