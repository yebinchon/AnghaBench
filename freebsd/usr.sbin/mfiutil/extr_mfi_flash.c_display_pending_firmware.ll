; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_flash.c_display_pending_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_flash.c_display_pending_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ctrl_info = type { i32, %struct.mfi_info_component* }
%struct.mfi_info_component = type { i32, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get controller info\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"mfi%d Pending Firmware Images:\0A\00", align 1
@mfi_unit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @display_pending_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_pending_firmware(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_ctrl_info, align 8
  %5 = alloca %struct.mfi_info_component, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @mfi_ctrl_get_info(i32 %8, %struct.mfi_ctrl_info* %4, i32* null)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %6, align 4
  %13 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load i32, i32* @mfi_unit, align 4
  %17 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %5, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcpy(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %5, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcpy(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @scan_firmware(%struct.mfi_info_component* %5)
  %31 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 8
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %4, i32 0, i32 0
  store i32 8, i32* %35, align 8
  br label %36

36:                                               ; preds = %34, %15
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %4, i32 0, i32 1
  %45 = load %struct.mfi_info_component*, %struct.mfi_info_component** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %45, i64 %46
  %48 = call i32 @scan_firmware(%struct.mfi_info_component* %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %37

52:                                               ; preds = %37
  %53 = call i32 @display_firmware(%struct.mfi_info_component* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %54

54:                                               ; preds = %66, %52
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %4, i32 0, i32 1
  %62 = load %struct.mfi_info_component*, %struct.mfi_info_component** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %62, i64 %63
  %65 = call i32 @display_firmware(%struct.mfi_info_component* %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %54

69:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %11
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @mfi_ctrl_get_info(i32, %struct.mfi_ctrl_info*, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @scan_firmware(%struct.mfi_info_component*) #1

declare dso_local i32 @display_firmware(%struct.mfi_info_component*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
