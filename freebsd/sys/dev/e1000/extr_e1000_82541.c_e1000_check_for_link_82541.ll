; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_check_for_link_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_check_for_link_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [27 x i8] c"e1000_check_for_link_82541\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_check_for_link_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_check_for_link_82541(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_mac_info* %7, %struct.e1000_mac_info** %3, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %14, i32* %4, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = call i32 @e1000_phy_has_link_generic(%struct.e1000_hw* %16, i32 1, i32 0, i32* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %59

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = load i64, i64* @FALSE, align 8
  %27 = call i32 @e1000_config_dsp_after_link_change_82541(%struct.e1000_hw* %25, i64 %26)
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %21
  %29 = load i64, i64* @FALSE, align 8
  %30 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = call i32 @e1000_check_downshift_generic(%struct.e1000_hw* %32)
  %34 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %59

41:                                               ; preds = %28
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = load i64, i64* @TRUE, align 8
  %44 = call i32 @e1000_config_dsp_after_link_change_82541(%struct.e1000_hw* %42, i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %47, align 8
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %50 = bitcast %struct.e1000_hw* %49 to %struct.e1000_hw.0*
  %51 = call i32 %48(%struct.e1000_hw.0* %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = call i32 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %41
  br label %59

59:                                               ; preds = %58, %38, %24, %20, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e1000_config_dsp_after_link_change_82541(%struct.e1000_hw*, i64) #1

declare dso_local i32 @e1000_check_downshift_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
