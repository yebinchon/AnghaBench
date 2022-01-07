; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_ops_X550EM_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_ops_X550EM_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_4__, %struct.ixgbe_mac_info }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ixgbe_mac_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)*, i32, i32*, i32, i32, i32, i32, i32 }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"ixgbe_init_ops_X550EM_a\00", align 1
@IXGBE_DEV_ID_X550EM_A_SGMII = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SGMII_L = common dso_local global i32 0, align 4
@ixgbe_read_iosf_sb_reg_x550 = common dso_local global i32 0, align 4
@ixgbe_write_iosf_sb_reg_x550 = common dso_local global i32 0, align 4
@ixgbe_read_iosf_sb_reg_x550a = common dso_local global i32 0, align 4
@ixgbe_write_iosf_sb_reg_x550a = common dso_local global i32 0, align 4
@ixgbe_acquire_swfw_sync_X550a = common dso_local global i32 0, align 4
@ixgbe_release_swfw_sync_X550a = common dso_local global i32 0, align 4
@ixgbe_fc_autoneg_fiber_x550em_a = common dso_local global i32 0, align 4
@ixgbe_fc_autoneg_backplane_x550em_a = common dso_local global i32 0, align 4
@ixgbe_setup_fc_backplane_x550em_a = common dso_local global i32* null, align 8
@ixgbe_fc_autoneg_sgmii_x550em_a = common dso_local global i32 0, align 4
@ixgbe_fc_autoneg_fw = common dso_local global i32* null, align 8
@ixgbe_setup_eee_fw = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_ops_X550EM_a(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 2
  store %struct.ixgbe_mac_info* %6, %struct.ixgbe_mac_info** %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = call i32 @ixgbe_init_ops_X550EM(%struct.ixgbe_hw* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SGMII, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SGMII_L, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @ixgbe_read_iosf_sb_reg_x550, align 4
  %23 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @ixgbe_write_iosf_sb_reg_x550, align 4
  %27 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 6
  store i32 %26, i32* %29, align 4
  br label %39

30:                                               ; preds = %15
  %31 = load i32, i32* @ixgbe_read_iosf_sb_reg_x550a, align 4
  %32 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 7
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @ixgbe_write_iosf_sb_reg_x550a, align 4
  %36 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %21
  %40 = load i32, i32* @ixgbe_acquire_swfw_sync_X550a, align 4
  %41 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 5
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @ixgbe_release_swfw_sync_X550a, align 4
  %45 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %50, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %53 = bitcast %struct.ixgbe_hw* %52 to %struct.ixgbe_hw.0*
  %54 = call i32 %51(%struct.ixgbe_hw.0* %53)
  switch i32 %54, label %72 [
    i32 128, label %55
    i32 129, label %63
  ]

55:                                               ; preds = %39
  %56 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @ixgbe_fc_autoneg_fiber_x550em_a, align 4
  %60 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  br label %73

63:                                               ; preds = %39
  %64 = load i32, i32* @ixgbe_fc_autoneg_backplane_x550em_a, align 4
  %65 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %66 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 8
  %68 = load i32*, i32** @ixgbe_setup_fc_backplane_x550em_a, align 8
  %69 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32* %68, i32** %71, align 8
  br label %73

72:                                               ; preds = %39
  br label %73

73:                                               ; preds = %72, %63, %55
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %103 [
    i32 131, label %77
    i32 130, label %77
  ]

77:                                               ; preds = %73, %73
  %78 = load i32, i32* @ixgbe_fc_autoneg_sgmii_x550em_a, align 4
  %79 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 8
  %82 = load i32*, i32** @ixgbe_fc_autoneg_fw, align 8
  %83 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %84 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32* %82, i32** %85, align 8
  %86 = load i32, i32* @ixgbe_setup_eee_fw, align 4
  %87 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %91 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %94 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %101 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  br label %104

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_init_ops_X550EM(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
