; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_init_nvm_params_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_init_nvm_params_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_nvm_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_nvm_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"e1000_init_nvm_params_82571\00", align 1
@E1000_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@e1000_nvm_flash_hw = common dso_local global i32 0, align 4
@E1000_EECD_AUPDEN = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_MASK = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_SHIFT = common dso_local global i32 0, align 4
@NVM_WORD_SIZE_BASE_SHIFT = common dso_local global i32 0, align 4
@e1000_get_hw_semaphore_82574 = common dso_local global i32 0, align 4
@e1000_put_hw_semaphore_82574 = common dso_local global i32 0, align 4
@e1000_acquire_nvm_82571 = common dso_local global i32 0, align 4
@e1000_release_nvm_82571 = common dso_local global i32 0, align 4
@e1000_read_nvm_eerd = common dso_local global i32 0, align 4
@e1000_update_nvm_checksum_82571 = common dso_local global i32 0, align 4
@e1000_validate_nvm_checksum_82571 = common dso_local global i32 0, align 4
@e1000_valid_led_default_82571 = common dso_local global i32 0, align 4
@e1000_write_nvm_82571 = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_nvm_params_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_nvm_params_82571(%struct.e1000_hw* %0) #0 {
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
  %12 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %12, i32 0, i32 0
  store i32 8, i32* %13, align 4
  %14 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %29 [
    i32 129, label %19
    i32 128, label %24
  ]

19:                                               ; preds = %1
  %20 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %20, i32 0, i32 3
  store i32 32, i32* %21, align 4
  %22 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %22, i32 0, i32 4
  store i32 16, i32* %23, align 4
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %25, i32 0, i32 3
  store i32 8, i32* %26, align 4
  %27 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %27, i32 0, i32 4
  store i32 8, i32* %28, align 4
  br label %46

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 32, i32 8
  %36 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 16, i32 8
  %44 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %29, %24, %19
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %71 [
    i32 132, label %51
    i32 131, label %51
    i32 130, label %51
  ]

51:                                               ; preds = %46, %46, %46
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, 15
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i32, i32* @e1000_nvm_flash_hw, align 4
  %58 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %60, i32 0, i32 5
  store i32 2048, i32* %61, align 4
  %62 = load i32, i32* @E1000_EECD_AUPDEN, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = load i32, i32* @E1000_EECD, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %66, i32 %67, i32 %68)
  br label %91

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %46, %70
  %72 = load i32, i32* @e1000_nvm_eeprom_spi, align 4
  %73 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @E1000_EECD_SIZE_EX_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @E1000_EECD_SIZE_EX_SHIFT, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* @NVM_WORD_SIZE_BASE_SHIFT, align 4
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 14
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  store i32 14, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %71
  %87 = load i32, i32* %5, align 4
  %88 = shl i32 1, %87
  %89 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %56
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %105 [
    i32 131, label %96
    i32 130, label %96
  ]

96:                                               ; preds = %91, %91
  %97 = load i32, i32* @e1000_get_hw_semaphore_82574, align 4
  %98 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @e1000_put_hw_semaphore_82574, align 4
  %102 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 5
  store i32 %101, i32* %104, align 4
  br label %114

105:                                              ; preds = %91
  %106 = load i32, i32* @e1000_acquire_nvm_82571, align 4
  %107 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @e1000_release_nvm_82571, align 4
  %111 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 5
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %105, %96
  %115 = load i32, i32* @e1000_read_nvm_eerd, align 4
  %116 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @e1000_update_nvm_checksum_82571, align 4
  %120 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %121 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @e1000_validate_nvm_checksum_82571, align 4
  %124 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @e1000_valid_led_default_82571, align 4
  %128 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %129 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* @e1000_write_nvm_82571, align 4
  %132 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %133 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %135
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
