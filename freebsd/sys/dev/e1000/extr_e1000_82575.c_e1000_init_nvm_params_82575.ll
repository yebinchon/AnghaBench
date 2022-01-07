; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_init_nvm_params_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_init_nvm_params_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_nvm_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_nvm_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"e1000_init_nvm_params_82575\00", align 1
@E1000_EECD_SIZE_EX_MASK = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_SHIFT = common dso_local global i32 0, align 4
@NVM_WORD_SIZE_BASE_SHIFT = common dso_local global i64 0, align 8
@e1000_i210 = common dso_local global i32 0, align 4
@E1000_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i32 0, align 4
@e1000_nvm_flash_hw = common dso_local global i32 0, align 4
@e1000_acquire_nvm_82575 = common dso_local global i32 0, align 4
@e1000_release_nvm_82575 = common dso_local global i32 0, align 4
@e1000_read_nvm_eerd = common dso_local global i32 0, align 4
@e1000_read_nvm_spi = common dso_local global i32 0, align 4
@e1000_write_nvm_spi = common dso_local global i32 0, align 4
@e1000_validate_nvm_checksum_generic = common dso_local global i32 0, align 4
@e1000_update_nvm_checksum_generic = common dso_local global i32 0, align 4
@e1000_valid_led_default_82575 = common dso_local global i32 0, align 4
@e1000_validate_nvm_checksum_82580 = common dso_local global i32 0, align 4
@e1000_update_nvm_checksum_82580 = common dso_local global i32 0, align 4
@e1000_validate_nvm_checksum_i350 = common dso_local global i32 0, align 4
@e1000_update_nvm_checksum_i350 = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_init_nvm_params_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_nvm_info* %7, %struct.e1000_nvm_info** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = load i32, i32* @E1000_EECD, align 4
  %10 = call i32 @E1000_READ_REG(%struct.e1000_hw* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @E1000_EECD_SIZE_EX_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @E1000_EECD_SIZE_EX_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* @NVM_WORD_SIZE_BASE_SHIFT, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 15
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 15, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @e1000_i210, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %25
  %37 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %37, i32 0, i32 1
  store i32 8, i32* %38, align 4
  %39 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  %41 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %54 [
    i32 129, label %44
    i32 128, label %49
  ]

44:                                               ; preds = %36
  %45 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %45, i32 0, i32 4
  store i32 32, i32* %46, align 4
  %47 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %47, i32 0, i32 5
  store i32 16, i32* %48, align 4
  br label %71

49:                                               ; preds = %36
  %50 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %50, i32 0, i32 4
  store i32 8, i32* %51, align 4
  %52 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %52, i32 0, i32 5
  store i32 8, i32* %53, align 4
  br label %71

54:                                               ; preds = %36
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 32, i32 8
  %61 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 16, i32 8
  %69 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %54, %49, %44
  %72 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 32768
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %77, i32 0, i32 4
  store i32 128, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* @e1000_nvm_eeprom_spi, align 4
  %81 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  br label %87

83:                                               ; preds = %25
  %84 = load i32, i32* @e1000_nvm_flash_hw, align 4
  %85 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @e1000_acquire_nvm_82575, align 4
  %89 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @e1000_release_nvm_82575, align 4
  %93 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 5
  store i32 %92, i32* %95, align 4
  %96 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %97 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 32768
  br i1 %99, label %100, label %105

100:                                              ; preds = %87
  %101 = load i32, i32* @e1000_read_nvm_eerd, align 4
  %102 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 4
  br label %110

105:                                              ; preds = %87
  %106 = load i32, i32* @e1000_read_nvm_spi, align 4
  %107 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load i32, i32* @e1000_write_nvm_spi, align 4
  %112 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @e1000_validate_nvm_checksum_generic, align 4
  %116 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @e1000_update_nvm_checksum_generic, align 4
  %120 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %121 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @e1000_valid_led_default_82575, align 4
  %124 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 4
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %128 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %149 [
    i32 132, label %131
    i32 131, label %140
    i32 130, label %140
  ]

131:                                              ; preds = %110
  %132 = load i32, i32* @e1000_validate_nvm_checksum_82580, align 4
  %133 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %134 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* @e1000_update_nvm_checksum_82580, align 4
  %137 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %138 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  br label %150

140:                                              ; preds = %110, %110
  %141 = load i32, i32* @e1000_validate_nvm_checksum_i350, align 4
  %142 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %143 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* @e1000_update_nvm_checksum_i350, align 4
  %146 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %147 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 4
  br label %150

149:                                              ; preds = %110
  br label %150

150:                                              ; preds = %149, %140, %131
  %151 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %151
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
