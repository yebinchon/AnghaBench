; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_init_phy_ops_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_init_phy_ops_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.ixgbe_phy_info, %struct.ixgbe_mac_info }
%struct.ixgbe_phy_info = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*)*, i32, i32, i32, i32*, i32, i32 }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_mac_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.1*)*, i32, i32 }
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ixgbe_init_phy_ops_82599\00", align 1
@IXGBE_DEV_ID_82599_QSFP_SF_QP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_DIR = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP1_DIR = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0 = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_NATIVE = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP1_NATIVE = common dso_local global i32 0, align 4
@ixgbe_read_i2c_byte_82599 = common dso_local global i32 0, align 4
@ixgbe_write_i2c_byte_82599 = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ixgbe_sfp_type_unknown = common dso_local global i64 0, align 8
@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@ixgbe_setup_copper_link_82599 = common dso_local global i32 0, align 4
@ixgbe_get_copper_link_capabilities_generic = common dso_local global i32 0, align 4
@ixgbe_setup_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_check_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_get_phy_firmware_version_tnx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_init_phy_ops_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 2
  store %struct.ixgbe_mac_info* %8, %struct.ixgbe_mac_info** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  store %struct.ixgbe_phy_info* %10, %struct.ixgbe_phy_info** %4, align 8
  %11 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %11, i64* %5, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IXGBE_DEV_ID_82599_QSFP_SF_QP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %1
  %19 = load i32, i32* @TRUE, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = load i32, i32* @IXGBE_ESDP, align 4
  %25 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @IXGBE_ESDP_SDP0_DIR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @IXGBE_ESDP_SDP1_DIR, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @IXGBE_ESDP_SDP0, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @IXGBE_ESDP_SDP0_NATIVE, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @IXGBE_ESDP_SDP1_NATIVE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = load i32, i32* @IXGBE_ESDP, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %45, i32 %46, i32 %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %50 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %49)
  %51 = load i32, i32* @ixgbe_read_i2c_byte_82599, align 4
  %52 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %53 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @ixgbe_write_i2c_byte_82599, align 4
  %56 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %57 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %18, %1
  %60 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %61 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %62, align 8
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %65 = bitcast %struct.ixgbe_hw* %64 to %struct.ixgbe_hw.0*
  %66 = call i64 %63(%struct.ixgbe_hw.0* %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %124

71:                                               ; preds = %59
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %73 = call i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw* %72)
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ixgbe_sfp_type_unknown, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %80, %71
  %86 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %88, align 8
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %91 = bitcast %struct.ixgbe_hw* %90 to %struct.ixgbe_hw.1*
  %92 = call i64 %89(%struct.ixgbe_hw.1* %91)
  %93 = load i64, i64* @ixgbe_media_type_copper, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %85
  %96 = load i32, i32* @ixgbe_setup_copper_link_82599, align 4
  %97 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %98 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @ixgbe_get_copper_link_capabilities_generic, align 4
  %101 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %102 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %95, %85
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %122 [
    i32 128, label %109
  ]

109:                                              ; preds = %104
  %110 = load i32, i32* @ixgbe_setup_phy_link_tnx, align 4
  %111 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %112 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* @ixgbe_check_phy_link_tnx, align 4
  %115 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %116 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @ixgbe_get_phy_firmware_version_tnx, align 4
  %119 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %120 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 8
  br label %123

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122, %109
  br label %124

124:                                              ; preds = %123, %70
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
