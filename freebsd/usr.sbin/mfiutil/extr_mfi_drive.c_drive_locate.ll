; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_drive_locate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_drive_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"locate: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"extra arguments\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"drive and state required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@MFI_DCMD_PD_LOCATE_START = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@MFI_DCMD_PD_LOCATE_STOP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"locate: invalid state %s\00", align 1
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to %s locate on drive %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @drive_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drive_locate(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i64], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 3
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %103

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcasecmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcasecmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %20
  %33 = load i64, i64* @MFI_DCMD_PD_LOCATE_START, align 8
  store i64 %33, i64* %7, align 8
  br label %55

34:                                               ; preds = %26
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcasecmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %34
  %47 = load i64, i64* @MFI_DCMD_PD_LOCATE_STOP, align 8
  store i64 %47, i64* %7, align 8
  br label %54

48:                                               ; preds = %40
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %3, align 4
  br label %103

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* @mfi_unit, align 4
  %57 = load i32, i32* @O_RDWR, align 4
  %58 = call i32 @mfi_open(i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @errno, align 4
  store i32 %62, i32* %8, align 4
  %63 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %103

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @mfi_lookup_drive(i32 %66, i8* %69, i32* %6)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @close(i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %103

77:                                               ; preds = %65
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @mbox_store_device_id(i64* %78, i32 %79)
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  store i64 0, i64* %81, align 16
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %86 = call i64 @mfi_dcmd_command(i32 %83, i64 %84, i32* null, i32 0, i64* %85, i32 4, i32* null)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %77
  %89 = load i32, i32* @errno, align 4
  store i32 %89, i32* %8, align 4
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @MFI_DCMD_PD_LOCATE_START, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @close(i32 %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %103

100:                                              ; preds = %77
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @close(i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %88, %73, %61, %48, %13
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @mfi_lookup_drive(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @mbox_store_device_id(i64*, i32) #1

declare dso_local i64 @mfi_dcmd_command(i32, i64, i32*, i32, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
