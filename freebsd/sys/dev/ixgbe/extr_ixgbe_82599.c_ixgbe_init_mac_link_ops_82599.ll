; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_init_mac_link_ops_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_init_mac_link_ops_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__, %struct.ixgbe_mac_info }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ixgbe_mac_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*)*, i8*, i32, i8*, i32*, i32*, i32* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"ixgbe_init_mac_link_ops_82599\00", align 1
@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@ixgbe_disable_tx_laser_multispeed_fiber = common dso_local global i32* null, align 8
@ixgbe_enable_tx_laser_multispeed_fiber = common dso_local global i32* null, align 8
@ixgbe_flap_tx_laser_multispeed_fiber = common dso_local global i32* null, align 8
@ixgbe_setup_mac_link_multispeed_fiber = common dso_local global i8* null, align 8
@ixgbe_setup_mac_link_82599 = common dso_local global i8* null, align 8
@ixgbe_set_hard_rate_select_speed = common dso_local global i32 0, align 4
@ixgbe_media_type_fiber_fixed = common dso_local global i64 0, align 8
@ixgbe_set_soft_rate_select_speed = common dso_local global i32 0, align 4
@ixgbe_media_type_backplane = common dso_local global i64 0, align 8
@ixgbe_smart_speed_auto = common dso_local global i64 0, align 8
@ixgbe_smart_speed_on = common dso_local global i64 0, align 8
@ixgbe_setup_mac_link_smartspeed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 1
  store %struct.ixgbe_mac_info* %5, %struct.ixgbe_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %9, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = bitcast %struct.ixgbe_hw* %11 to %struct.ixgbe_hw.0*
  %13 = call i64 %10(%struct.ixgbe_hw.0* %12)
  %14 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = call i32 @ixgbe_mng_enabled(%struct.ixgbe_hw* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** @ixgbe_disable_tx_laser_multispeed_fiber, align 8
  %22 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  store i32* %21, i32** %24, align 8
  %25 = load i32*, i32** @ixgbe_enable_tx_laser_multispeed_fiber, align 8
  %26 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  store i32* %25, i32** %28, align 8
  %29 = load i32*, i32** @ixgbe_flap_tx_laser_multispeed_fiber, align 8
  %30 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  store i32* %29, i32** %32, align 8
  br label %43

33:                                               ; preds = %16, %1
  %34 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  store i32* null, i32** %36, align 8
  %37 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  %40 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %33, %20
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load i8*, i8** @ixgbe_setup_mac_link_multispeed_fiber, align 8
  %51 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @ixgbe_setup_mac_link_82599, align 8
  %55 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @ixgbe_set_hard_rate_select_speed, align 4
  %59 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %63 = call i64 @ixgbe_get_media_type(%struct.ixgbe_hw* %62)
  %64 = load i64, i64* @ixgbe_media_type_fiber_fixed, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %49
  %67 = load i32, i32* @ixgbe_set_soft_rate_select_speed, align 4
  %68 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %49
  br label %106

72:                                               ; preds = %43
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %74 = call i64 @ixgbe_get_media_type(%struct.ixgbe_hw* %73)
  %75 = load i64, i64* @ixgbe_media_type_backplane, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %72
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ixgbe_smart_speed_auto, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %86 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ixgbe_smart_speed_on, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %84, %77
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %93 = call i32 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** @ixgbe_setup_mac_link_smartspeed, align 8
  %97 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %98 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  br label %105

100:                                              ; preds = %91, %84, %72
  %101 = load i8*, i8** @ixgbe_setup_mac_link_82599, align 8
  %102 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %103 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105, %71
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_mng_enabled(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_get_media_type(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
