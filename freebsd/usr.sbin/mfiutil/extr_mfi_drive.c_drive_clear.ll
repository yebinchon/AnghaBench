; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_drive_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_drive_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pd_info = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"drive clear: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"extra arguments\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"drive and action requires\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@MFI_DCMD_PD_CLEAR_START = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@MFI_DCMD_PD_CLEAR_ABORT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [56 x i8] c"drive clear: invalid action, must be 'start' or 'stop'\0A\00", align 1
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to fetch info for drive %u\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Failed to %s clear on drive %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @drive_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drive_clear(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_pd_info, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 3
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %123

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %36, %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call signext i8 @tolower(i8 signext %33)
  %35 = load i8*, i8** %10, align 8
  store i8 %34, i8* %35, align 1
  br label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %10, align 8
  br label %26

39:                                               ; preds = %26
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* @MFI_DCMD_PD_CLEAR_START, align 8
  store i64 %46, i64* %7, align 8
  br label %65

47:                                               ; preds = %39
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53, %47
  %60 = load i64, i64* @MFI_DCMD_PD_CLEAR_ABORT, align 8
  store i64 %60, i64* %7, align 8
  br label %64

61:                                               ; preds = %53
  %62 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %123

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i32, i32* @mfi_unit, align 4
  %67 = load i32, i32* @O_RDWR, align 4
  %68 = call i32 @mfi_open(i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @errno, align 4
  store i32 %72, i32* %11, align 4
  %73 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %3, align 4
  br label %123

75:                                               ; preds = %65
  %76 = load i32, i32* %12, align 4
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @mfi_lookup_drive(i32 %76, i8* %79, i32* %8)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %123

87:                                               ; preds = %75
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @mfi_pd_get_info(i32 %88, i32 %89, %struct.mfi_pd_info* %6, i32* null)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* @errno, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %3, align 4
  br label %123

99:                                               ; preds = %87
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %101 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %102 = call i32 @mbox_store_pdref(i32* %100, i32* %101)
  %103 = load i32, i32* %12, align 4
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %106 = call i64 @mfi_dcmd_command(i32 %103, i64 %104, i32* null, i32 0, i32* %105, i32 4, i32* null)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %99
  %109 = load i32, i32* @errno, align 4
  store i32 %109, i32* %11, align 4
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @MFI_DCMD_PD_CLEAR_START, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %114, i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @close(i32 %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %123

120:                                              ; preds = %99
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @close(i32 %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %120, %108, %92, %83, %71, %61, %15
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @mfi_lookup_drive(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mfi_pd_get_info(i32, i32, %struct.mfi_pd_info*, i32*) #1

declare dso_local i32 @mbox_store_pdref(i32*, i32*) #1

declare dso_local i64 @mfi_dcmd_command(i32, i64, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
