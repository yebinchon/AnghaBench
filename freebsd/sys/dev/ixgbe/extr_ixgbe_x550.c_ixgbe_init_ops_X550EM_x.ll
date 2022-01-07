; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_ops_X550EM_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_ops_X550EM_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.ixgbe_link_info, %struct.ixgbe_mac_info }
%struct.ixgbe_link_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ixgbe_mac_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ixgbe_init_ops_X550EM_x\00", align 1
@ixgbe_read_iosf_sb_reg_x550 = common dso_local global i32 0, align 4
@ixgbe_write_iosf_sb_reg_x550 = common dso_local global i32 0, align 4
@ixgbe_acquire_swfw_sync_X550em = common dso_local global i32 0, align 4
@ixgbe_release_swfw_sync_X550em = common dso_local global i32 0, align 4
@ixgbe_read_i2c_combined_generic = common dso_local global i32 0, align 4
@ixgbe_read_i2c_combined_generic_unlocked = common dso_local global i32 0, align 4
@ixgbe_write_i2c_combined_generic = common dso_local global i32 0, align 4
@ixgbe_write_i2c_combined_generic_unlocked = common dso_local global i32 0, align 4
@IXGBE_CS4227 = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_1G_T = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_ops_X550EM_x(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_link_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 2
  store %struct.ixgbe_mac_info* %7, %struct.ixgbe_mac_info** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  store %struct.ixgbe_link_info* %9, %struct.ixgbe_link_info** %4, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = call i32 @ixgbe_init_ops_X550EM(%struct.ixgbe_hw* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @ixgbe_read_iosf_sb_reg_x550, align 4
  %14 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @ixgbe_write_iosf_sb_reg_x550, align 4
  %18 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @ixgbe_acquire_swfw_sync_X550em, align 4
  %22 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @ixgbe_release_swfw_sync_X550em, align 4
  %26 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @ixgbe_read_i2c_combined_generic, align 4
  %30 = load %struct.ixgbe_link_info*, %struct.ixgbe_link_info** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_link_info, %struct.ixgbe_link_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @ixgbe_read_i2c_combined_generic_unlocked, align 4
  %34 = load %struct.ixgbe_link_info*, %struct.ixgbe_link_info** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_link_info, %struct.ixgbe_link_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @ixgbe_write_i2c_combined_generic, align 4
  %38 = load %struct.ixgbe_link_info*, %struct.ixgbe_link_info** %4, align 8
  %39 = getelementptr inbounds %struct.ixgbe_link_info, %struct.ixgbe_link_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @ixgbe_write_i2c_combined_generic_unlocked, align 4
  %42 = load %struct.ixgbe_link_info*, %struct.ixgbe_link_info** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbe_link_info, %struct.ixgbe_link_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @IXGBE_CS4227, align 4
  %46 = load %struct.ixgbe_link_info*, %struct.ixgbe_link_info** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_link_info, %struct.ixgbe_link_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IXGBE_DEV_ID_X550EM_X_1G_T, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %1
  %54 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %58 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %53, %1
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_init_ops_X550EM(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
