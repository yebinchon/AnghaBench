; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_remove_spare.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_remove_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pd_info = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"remove spare: drive required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to fetch info for drive %u\00", align 1
@MFI_PD_STATE_HOT_SPARE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Drive %u is not a hot spare\00", align 1
@MFI_DCMD_CFG_REMOVE_SPARE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to delete spare\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @remove_spare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_spare(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_pd_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %79

16:                                               ; preds = %2
  %17 = load i32, i32* @mfi_unit, align 4
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = call i32 @mfi_open(i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %7, align 4
  %24 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %79

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @mfi_lookup_drive(i32 %27, i8* %30, i32* %9)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @close(i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %79

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @mfi_pd_get_info(i32 %39, i32 %40, %struct.mfi_pd_info* %6, i32* null)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @errno, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %79

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MFI_PD_STATE_HOT_SPARE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %3, align 4
  br label %79

61:                                               ; preds = %50
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %63 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 1
  %64 = call i32 @mbox_store_pdref(i32* %62, i32* %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @MFI_DCMD_CFG_REMOVE_SPARE, align 4
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %68 = call i64 @mfi_dcmd_command(i32 %65, i32 %66, i32* null, i32 0, i32* %67, i32 16, i32* null)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load i32, i32* @errno, align 4
  store i32 %71, i32* %7, align 4
  %72 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %61
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @close(i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %70, %55, %43, %34, %22, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @mfi_lookup_drive(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mfi_pd_get_info(i32, i32, %struct.mfi_pd_info*, i32*) #1

declare dso_local i32 @mbox_store_pdref(i32*, i32*) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
