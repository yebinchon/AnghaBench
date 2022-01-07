; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfiutil.c_scan_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfiutil.c_scan_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_info_component = type { i32, i32, i32, i32 }

@fw_name_width = common dso_local global i32 0, align 4
@fw_version_width = common dso_local global i32 0, align 4
@fw_date_width = common dso_local global i32 0, align 4
@fw_time_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scan_firmware(%struct.mfi_info_component* %0) #0 {
  %2 = alloca %struct.mfi_info_component*, align 8
  %3 = alloca i32, align 4
  store %struct.mfi_info_component* %0, %struct.mfi_info_component** %2, align 8
  %4 = load %struct.mfi_info_component*, %struct.mfi_info_component** %2, align 8
  %5 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @strlen(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @fw_name_width, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* @fw_name_width, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.mfi_info_component*, %struct.mfi_info_component** %2, align 8
  %15 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlen(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @fw_version_width, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  store i32 %22, i32* @fw_version_width, align 4
  br label %23

23:                                               ; preds = %21, %13
  %24 = load %struct.mfi_info_component*, %struct.mfi_info_component** %2, align 8
  %25 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strlen(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @fw_date_width, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  store i32 %32, i32* @fw_date_width, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = load %struct.mfi_info_component*, %struct.mfi_info_component** %2, align 8
  %35 = getelementptr inbounds %struct.mfi_info_component, %struct.mfi_info_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strlen(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @fw_time_width, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* @fw_time_width, align 4
  br label %43

43:                                               ; preds = %41, %33
  ret void
}

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
