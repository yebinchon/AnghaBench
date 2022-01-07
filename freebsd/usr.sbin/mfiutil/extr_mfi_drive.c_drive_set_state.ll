; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_drive_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_drive_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pd_info = type { i32, i32 }

@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to fetch info for drive %u\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Drive %u is already in the desired state\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MFI_DCMD_PD_STATE_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to set drive %u to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @drive_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drive_set_state(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mfi_pd_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @mfi_unit, align 4
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = call i32 @mfi_open(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %9, align 4
  %18 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %80

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @mfi_lookup_drive(i32 %21, i8* %22, i32* %7)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %80

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @mfi_pd_get_info(i32 %31, i32 %32, %struct.mfi_pd_info* %6, i32* null)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %80

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %3, align 4
  br label %80

53:                                               ; preds = %42
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %55 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %6, i32 0, i32 1
  %56 = call i32 @mbox_store_pdref(i32* %54, i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4
  store i32 %58, i32* %59, align 16
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 8
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @MFI_DCMD_PD_STATE_SET, align 4
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %66 = call i64 @mfi_dcmd_command(i32 %63, i32 %64, i32* null, i32 0, i32* %65, i32 6, i32* null)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %53
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @mfi_pdstate(i32 %71)
  %73 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @close(i32 %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %80

77:                                               ; preds = %53
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @close(i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %68, %47, %35, %26, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @mfi_lookup_drive(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mfi_pd_get_info(i32, i32, %struct.mfi_pd_info*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @mbox_store_pdref(i32*, i32*) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @mfi_pdstate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
