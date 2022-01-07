; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_init_phy_ops_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_init_phy_ops_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_phy_info, %struct.ixgbe_mac_info }
%struct.ixgbe_phy_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)*, i32, i32, i32, i32, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_mac_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.2*)*, i32, i32 }
%struct.ixgbe_hw.2 = type opaque

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ixgbe_init_phy_ops_82598\00", align 1
@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@ixgbe_setup_copper_link_82598 = common dso_local global i32 0, align 4
@ixgbe_get_copper_link_capabilities_generic = common dso_local global i32 0, align 4
@ixgbe_setup_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_check_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_get_phy_firmware_version_tnx = common dso_local global i32 0, align 4
@ixgbe_reset_phy_nl = common dso_local global i32 0, align 4
@ixgbe_sfp_type_unknown = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_phy_ops_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  store %struct.ixgbe_mac_info* %9, %struct.ixgbe_mac_info** %3, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  store %struct.ixgbe_phy_info* %11, %struct.ixgbe_phy_info** %4, align 8
  %12 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %12, i32* %5, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %16, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = bitcast %struct.ixgbe_hw* %18 to %struct.ixgbe_hw.1*
  %20 = call i32 %17(%struct.ixgbe_hw.1* %19)
  %21 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.ixgbe_hw.2*)*, i64 (%struct.ixgbe_hw.2*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.2*
  %27 = call i64 %24(%struct.ixgbe_hw.2* %26)
  %28 = load i64, i64* @ixgbe_media_type_copper, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load i32, i32* @ixgbe_setup_copper_link_82598, align 4
  %32 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ixgbe_get_copper_link_capabilities_generic, align 4
  %36 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  br label %39

39:                                               ; preds = %30, %1
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %92 [
    i32 128, label %44
    i32 129, label %57
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* @ixgbe_setup_phy_link_tnx, align 4
  %46 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @ixgbe_check_phy_link_tnx, align 4
  %50 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %51 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @ixgbe_get_phy_firmware_version_tnx, align 4
  %54 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  br label %93

57:                                               ; preds = %39
  %58 = load i32, i32* @ixgbe_reset_phy_nl, align 4
  %59 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %60 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %63 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %64, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = bitcast %struct.ixgbe_hw* %66 to %struct.ixgbe_hw.0*
  %68 = call i32 %65(%struct.ixgbe_hw.0* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @IXGBE_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %94

73:                                               ; preds = %57
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ixgbe_sfp_type_unknown, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %81, i32* %5, align 4
  br label %94

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %85 = call i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %84, i32* %6, i32* %7)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @IXGBE_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %90, i32* %5, align 4
  br label %94

91:                                               ; preds = %83
  br label %93

92:                                               ; preds = %39
  br label %93

93:                                               ; preds = %92, %91, %44
  br label %94

94:                                               ; preds = %93, %89, %80, %72
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
