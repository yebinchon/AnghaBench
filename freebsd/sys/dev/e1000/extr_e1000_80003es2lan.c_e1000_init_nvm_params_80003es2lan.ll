; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_init_nvm_params_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_init_nvm_params_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"e1000_init_nvm_params_80003es2lan\00", align 1
@E1000_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_MASK = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_SHIFT = common dso_local global i32 0, align 4
@NVM_WORD_SIZE_BASE_SHIFT = common dso_local global i64 0, align 8
@e1000_acquire_nvm_80003es2lan = common dso_local global i32 0, align 4
@e1000_read_nvm_eerd = common dso_local global i32 0, align 4
@e1000_release_nvm_80003es2lan = common dso_local global i32 0, align 4
@e1000_update_nvm_checksum_generic = common dso_local global i32 0, align 4
@e1000_valid_led_default_generic = common dso_local global i32 0, align 4
@e1000_validate_nvm_checksum_generic = common dso_local global i32 0, align 4
@e1000_write_nvm_80003es2lan = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_nvm_params_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_nvm_params_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_nvm_info* %7, %struct.e1000_nvm_info** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = load i32, i32* @E1000_EECD, align 4
  %10 = call i32 @E1000_READ_REG(%struct.e1000_hw* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
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
  %47 = load i32, i32* @e1000_nvm_eeprom_spi, align 4
  %48 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @E1000_EECD_SIZE_EX_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @E1000_EECD_SIZE_EX_SHIFT, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load i64, i64* @NVM_WORD_SIZE_BASE_SHIFT, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %60, 14
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  store i32 14, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 1, %64
  %66 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @e1000_acquire_nvm_80003es2lan, align 4
  %69 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @e1000_read_nvm_eerd, align 4
  %73 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @e1000_release_nvm_80003es2lan, align 4
  %77 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @e1000_update_nvm_checksum_generic, align 4
  %81 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @e1000_valid_led_default_generic, align 4
  %85 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @e1000_validate_nvm_checksum_generic, align 4
  %89 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @e1000_write_nvm_80003es2lan, align 4
  %93 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %96
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
