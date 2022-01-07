; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_nvm_params_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_nvm_params_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_7__, i64, i64, %struct.TYPE_5__, %struct.e1000_nvm_info }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.e1000_nvm_info = type { i32, i32, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_init_nvm_params_ich8lan\00", align 1
@e1000_nvm_flash_sw = common dso_local global i32 0, align 4
@e1000_pch_spt = common dso_local global i64 0, align 8
@E1000_STRAP = common dso_local global i32 0, align 4
@NVM_SIZE_MULTIPLIER = common dso_local global i32 0, align 4
@E1000_FLASH_BASE_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"ERROR: Flash registers not mapped\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@ICH_FLASH_GFPREG = common dso_local global i32 0, align 4
@FLASH_GFPREG_BASE_MASK = common dso_local global i32 0, align 4
@FLASH_SECTOR_ADDR_SHIFT = common dso_local global i32 0, align 4
@E1000_SHADOW_RAM_WORDS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@e1000_acquire_nvm_ich8lan = common dso_local global i32 0, align 4
@e1000_release_nvm_ich8lan = common dso_local global i32 0, align 4
@e1000_read_nvm_spt = common dso_local global i32 0, align 4
@e1000_update_nvm_checksum_spt = common dso_local global i32 0, align 4
@e1000_read_nvm_ich8lan = common dso_local global i32 0, align 4
@e1000_update_nvm_checksum_ich8lan = common dso_local global i32 0, align 4
@e1000_valid_led_default_ich8lan = common dso_local global i32 0, align 4
@e1000_validate_nvm_checksum_ich8lan = common dso_local global i32 0, align 4
@e1000_write_nvm_ich8lan = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_nvm_params_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_nvm_params_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_nvm_info*, align 8
  %5 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 4
  store %struct.e1000_nvm_info* %12, %struct.e1000_nvm_info** %4, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %15, %struct.e1000_dev_spec_ich8lan** %5, align 8
  %16 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @e1000_nvm_flash_sw, align 4
  %18 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e1000_pch_spt, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %1
  %27 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = load i32, i32* @E1000_STRAP, align 4
  %31 = call i32 @E1000_READ_REG(%struct.e1000_hw* %29, i32 %30)
  %32 = ashr i32 %31, 1
  %33 = and i32 %32, 31
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @NVM_SIZE_MULTIPLIER, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sdiv i32 %37, 2
  %39 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @E1000_FLASH_BASE_ADDR, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %97

54:                                               ; preds = %1
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %171

63:                                               ; preds = %54
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = load i32, i32* @ICH_FLASH_GFPREG, align 4
  %66 = call i32 @E1000_READ_FLASH_REG(%struct.e1000_hw* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @FLASH_GFPREG_BASE_MASK, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 16
  %72 = load i32, i32* @FLASH_GFPREG_BASE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @FLASH_SECTOR_ADDR_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %79 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @FLASH_SECTOR_ADDR_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 2
  store i32 %90, i32* %88, align 4
  %91 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %92 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  br label %97

97:                                               ; preds = %63, %26
  %98 = load i64, i64* @E1000_SHADOW_RAM_WORDS, align 8
  %99 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  store i64 0, i64* %9, align 8
  br label %101

101:                                              ; preds = %121, %97
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %104 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load i32, i32* @FALSE, align 4
  %109 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %5, align 8
  %110 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 %108, i32* %114, align 4
  %115 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %5, align 8
  %116 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 65535, i32* %120, align 4
  br label %121

121:                                              ; preds = %107
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %9, align 8
  br label %101

124:                                              ; preds = %101
  %125 = load i32, i32* @e1000_acquire_nvm_ich8lan, align 4
  %126 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %127 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 6
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* @e1000_release_nvm_ich8lan, align 4
  %130 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %131 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 5
  store i32 %129, i32* %132, align 4
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %134 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @e1000_pch_spt, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %124
  %140 = load i32, i32* @e1000_read_nvm_spt, align 4
  %141 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %142 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* @e1000_update_nvm_checksum_spt, align 4
  %145 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 4
  br label %157

148:                                              ; preds = %124
  %149 = load i32, i32* @e1000_read_nvm_ich8lan, align 4
  %150 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %151 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* @e1000_update_nvm_checksum_ich8lan, align 4
  %154 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %155 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 4
  br label %157

157:                                              ; preds = %148, %139
  %158 = load i32, i32* @e1000_valid_led_default_ich8lan, align 4
  %159 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %160 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  %162 = load i32, i32* @e1000_validate_nvm_checksum_ich8lan, align 4
  %163 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %164 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @e1000_write_nvm_ich8lan, align 4
  %167 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %168 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %157, %59
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_READ_FLASH_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
