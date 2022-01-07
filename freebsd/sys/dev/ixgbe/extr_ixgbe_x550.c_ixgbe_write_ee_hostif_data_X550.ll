; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_write_ee_hostif_data_X550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_write_ee_hostif_data_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_hic_write_shadow_ram = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ixgbe_write_ee_hostif_data_X550\00", align 1
@FW_WRITE_SHADOW_RAM_CMD = common dso_local global i32 0, align 4
@FW_WRITE_SHADOW_RAM_LEN = common dso_local global i32 0, align 4
@FW_DEFAULT_CHECKSUM = common dso_local global i32 0, align 4
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_write_ee_hostif_data_X550(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbe_hic_write_shadow_ram, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @FW_WRITE_SHADOW_RAM_CMD, align 4
  %11 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @FW_WRITE_SHADOW_RAM_LEN, align 4
  %18 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @FW_DEFAULT_CHECKSUM, align 4
  %22 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = call i32 @IXGBE_CPU_TO_BE16(i32 4)
  %26 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 2
  %31 = call i32 @IXGBE_CPU_TO_BE32(i32 %30)
  %32 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %34 = bitcast %struct.ixgbe_hic_write_shadow_ram* %8 to i32*
  %35 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @ixgbe_host_interface_command(%struct.ixgbe_hw* %33, i32* %34, i32 40, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_CPU_TO_BE16(i32) #1

declare dso_local i32 @IXGBE_CPU_TO_BE32(i32) #1

declare dso_local i32 @ixgbe_host_interface_command(%struct.ixgbe_hw*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
