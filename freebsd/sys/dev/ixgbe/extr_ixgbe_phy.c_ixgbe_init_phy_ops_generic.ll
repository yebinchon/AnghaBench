; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_init_phy_ops_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_init_phy_ops_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_phy_info }
%struct.ixgbe_phy_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"ixgbe_init_phy_ops_generic\00", align 1
@ixgbe_identify_phy_generic = common dso_local global i32 0, align 4
@ixgbe_reset_phy_generic = common dso_local global i32 0, align 4
@ixgbe_read_phy_reg_generic = common dso_local global i32 0, align 4
@ixgbe_write_phy_reg_generic = common dso_local global i32 0, align 4
@ixgbe_read_phy_reg_mdi = common dso_local global i32 0, align 4
@ixgbe_write_phy_reg_mdi = common dso_local global i32 0, align 4
@ixgbe_setup_phy_link_generic = common dso_local global i32 0, align 4
@ixgbe_setup_phy_link_speed_generic = common dso_local global i32 0, align 4
@ixgbe_get_phy_firmware_version_generic = common dso_local global i32 0, align 4
@ixgbe_read_i2c_byte_generic = common dso_local global i32 0, align 4
@ixgbe_write_i2c_byte_generic = common dso_local global i32 0, align 4
@ixgbe_read_i2c_sff8472_generic = common dso_local global i32 0, align 4
@ixgbe_read_i2c_eeprom_generic = common dso_local global i32 0, align 4
@ixgbe_write_i2c_eeprom_generic = common dso_local global i32 0, align 4
@ixgbe_i2c_bus_clear = common dso_local global i32 0, align 4
@ixgbe_identify_module_generic = common dso_local global i32 0, align 4
@ixgbe_sfp_type_unknown = common dso_local global i32 0, align 4
@ixgbe_read_i2c_byte_generic_unlocked = common dso_local global i32 0, align 4
@ixgbe_write_i2c_byte_generic_unlocked = common dso_local global i32 0, align 4
@ixgbe_tn_check_overtemp = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_phy_ops_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_phy_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 0
  store %struct.ixgbe_phy_info* %5, %struct.ixgbe_phy_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @ixgbe_identify_phy_generic, align 4
  %8 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 19
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @ixgbe_reset_phy_generic, align 4
  %12 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 18
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @ixgbe_read_phy_reg_generic, align 4
  %16 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @ixgbe_write_phy_reg_generic, align 4
  %20 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 16
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @ixgbe_read_phy_reg_mdi, align 4
  %24 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 15
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @ixgbe_write_phy_reg_mdi, align 4
  %28 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 14
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @ixgbe_setup_phy_link_generic, align 4
  %32 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 13
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ixgbe_setup_phy_link_speed_generic, align 4
  %36 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 12
  store i32 %35, i32* %38, align 8
  %39 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 11
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @ixgbe_get_phy_firmware_version_generic, align 4
  %43 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 10
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @ixgbe_read_i2c_byte_generic, align 4
  %47 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 9
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @ixgbe_write_i2c_byte_generic, align 4
  %51 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 8
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @ixgbe_read_i2c_sff8472_generic, align 4
  %55 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @ixgbe_read_i2c_eeprom_generic, align 4
  %59 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @ixgbe_write_i2c_eeprom_generic, align 4
  %63 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @ixgbe_i2c_bus_clear, align 4
  %67 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %68 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @ixgbe_identify_module_generic, align 4
  %71 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @ixgbe_sfp_type_unknown, align 4
  %75 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %76 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @ixgbe_read_i2c_byte_generic_unlocked, align 4
  %78 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %79 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @ixgbe_write_i2c_byte_generic_unlocked, align 4
  %82 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @ixgbe_tn_check_overtemp, align 4
  %86 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %89
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
