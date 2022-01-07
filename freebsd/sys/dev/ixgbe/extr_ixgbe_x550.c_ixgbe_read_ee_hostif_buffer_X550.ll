; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_read_ee_hostif_buffer_X550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_read_ee_hostif_buffer_X550.c"
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
@.str = private unnamed_addr constant [33 x i8] c"ixgbe_read_ee_hostif_buffer_X550\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"EEPROM read buffer - semaphore failed\0A\00", align 1
@FW_MAX_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@FW_READ_SHADOW_RAM_CMD = common dso_local global i32 0, align 4
@FW_READ_SHADOW_RAM_LEN = common dso_local global i32 0, align 4
@FW_DEFAULT_CHECKSUM = common dso_local global i32 0, align 4
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Host interface command failed\0A\00", align 1
@IXGBE_FLEX_MNG = common dso_local global i32 0, align 4
@FW_NVM_DATA_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_ee_hostif_buffer_X550(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_hic_read_shadow_ram, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %19 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %21 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %25, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %28 = bitcast %struct.ixgbe_hw* %27 to %struct.ixgbe_hw.1*
  %29 = load i32, i32* %10, align 4
  %30 = call i64 %26(%struct.ixgbe_hw.1* %28, i32 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %5, align 8
  br label %146

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %130, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %134

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @FW_MAX_READ_BUFFER_SIZE, align 4
  %43 = sdiv i32 %42, 2
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @FW_MAX_READ_BUFFER_SIZE, align 4
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %13, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* @FW_READ_SHADOW_RAM_CMD, align 4
  %52 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %11, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %11, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @FW_READ_SHADOW_RAM_LEN, align 4
  %59 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %11, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @FW_DEFAULT_CHECKSUM, align 4
  %63 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %11, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  %69 = mul nsw i32 %68, 2
  %70 = call i32 @IXGBE_CPU_TO_BE32(i32 %69)
  %71 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %11, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %72, 2
  %74 = call i32 @IXGBE_CPU_TO_BE16(i32 %73)
  %75 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %11, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %11, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, %struct.ixgbe_hic_read_shadow_ram* %11, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %79 = bitcast %struct.ixgbe_hic_read_shadow_ram* %11 to i32*
  %80 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %81 = call i64 @ixgbe_hic_unlocked(%struct.ixgbe_hw* %78, i32* %79, i32 48, i32 %80)
  store i64 %81, i64* %14, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %50
  %85 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %135

86:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %127, %86
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %87
  %92 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %93 = load i32, i32* @FW_NVM_DATA_OFFSET, align 4
  %94 = shl i32 %93, 2
  %95 = add nsw i32 %92, %94
  %96 = load i32, i32* %15, align 4
  %97 = mul nsw i32 2, %96
  %98 = add nsw i32 %95, %97
  store i32 %98, i32* %16, align 4
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %99, i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = and i32 %102, 65535
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %91
  %116 = load i32, i32* %17, align 4
  %117 = ashr i32 %116, 16
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = and i32 %118, 65535
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %115, %91
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %87

130:                                              ; preds = %87
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %8, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %37

134:                                              ; preds = %37
  br label %135

135:                                              ; preds = %134, %84
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %137 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %139, align 8
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %142 = bitcast %struct.ixgbe_hw* %141 to %struct.ixgbe_hw.0*
  %143 = load i32, i32* %10, align 4
  %144 = call i32 %140(%struct.ixgbe_hw.0* %142, i32 %143)
  %145 = load i64, i64* %14, align 8
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %135, %33
  %147 = load i64, i64* %5, align 8
  ret i64 %147
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_CPU_TO_BE32(i32) #1

declare dso_local i32 @IXGBE_CPU_TO_BE16(i32) #1

declare dso_local i64 @ixgbe_hic_unlocked(%struct.ixgbe_hw*, i32*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
