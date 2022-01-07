; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_read_ee_hostif_X550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_read_ee_hostif_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hic_read_shadow_ram = type { i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }

@IXGBE_GSSR_SW_MNG_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ixgbe_read_ee_hostif_X550\00", align 1
@FW_READ_SHADOW_RAM_CMD = common dso_local global i32 0, align 4
@FW_READ_SHADOW_RAM_LEN = common dso_local global i32 0, align 4
@FW_DEFAULT_CHECKSUM = common dso_local global i32 0, align 4
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@IXGBE_FLEX_MNG = common dso_local global i32 0, align 4
@FW_NVM_DATA_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_ee_hostif_X550(%struct.ixgbe_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_hic_read_shadow_ram, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %12 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @FW_READ_SHADOW_RAM_CMD, align 4
  %16 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %9, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %9, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @FW_READ_SHADOW_RAM_LEN, align 4
  %23 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %9, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @FW_DEFAULT_CHECKSUM, align 4
  %27 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %9, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %30, 2
  %32 = call i32 @IXGBE_CPU_TO_BE32(i32 %31)
  %33 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %9, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = call i32 @IXGBE_CPU_TO_BE16(i32 4)
  %35 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %9, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %9, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %9, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %41, align 8
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %44 = bitcast %struct.ixgbe_hw* %43 to %struct.ixgbe_hw.1*
  %45 = load i32, i32* %8, align 4
  %46 = call i64 %42(%struct.ixgbe_hw.1* %44, i32 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %4, align 8
  br label %76

51:                                               ; preds = %3
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %53 = bitcast %struct.ixgbe_hic_read_shadow_ram* %9 to i32*
  %54 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %55 = call i64 @ixgbe_hic_unlocked(%struct.ixgbe_hw* %52, i32* %53, i32 48, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %60 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %61 = load i32, i32* @FW_NVM_DATA_OFFSET, align 4
  %62 = call i64 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %59, i32 %60, i32 %61)
  %63 = trunc i64 %62 to i32
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %69, align 8
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %72 = bitcast %struct.ixgbe_hw* %71 to %struct.ixgbe_hw.0*
  %73 = load i32, i32* %8, align 4
  %74 = call i32 %70(%struct.ixgbe_hw.0* %72, i32 %73)
  %75 = load i64, i64* %10, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %65, %49
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_CPU_TO_BE32(i32) #1

declare dso_local i32 @IXGBE_CPU_TO_BE16(i32) #1

declare dso_local i64 @ixgbe_hic_unlocked(%struct.ixgbe_hw*, i32*, i32, i32) #1

declare dso_local i64 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
