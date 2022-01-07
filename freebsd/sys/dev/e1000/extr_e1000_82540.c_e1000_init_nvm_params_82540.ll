; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_init_nvm_params_82540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_init_nvm_params_82540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"e1000_init_nvm_params_82540\00", align 1
@e1000_nvm_eeprom_microwire = common dso_local global i32 0, align 4
@E1000_EECD_SIZE = common dso_local global i32 0, align 4
@e1000_acquire_nvm_generic = common dso_local global i32 0, align 4
@e1000_read_nvm_microwire = common dso_local global i32 0, align 4
@e1000_release_nvm_generic = common dso_local global i32 0, align 4
@e1000_update_nvm_checksum_generic = common dso_local global i32 0, align 4
@e1000_valid_led_default_generic = common dso_local global i32 0, align 4
@e1000_validate_nvm_checksum_generic = common dso_local global i32 0, align 4
@e1000_write_nvm_microwire = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_nvm_params_82540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_nvm_params_82540(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_nvm_info* %6, %struct.e1000_nvm_info** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = load i32, i32* @E1000_EECD, align 4
  %9 = call i32 @E1000_READ_REG(%struct.e1000_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @e1000_nvm_eeprom_microwire, align 4
  %12 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %14, i32 0, i32 0
  store i32 50, i32* %15, align 4
  %16 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %16, i32 0, i32 1
  store i32 3, i32* %17, align 4
  %18 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %31 [
    i32 129, label %21
    i32 128, label %26
  ]

21:                                               ; preds = %1
  %22 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %22, i32 0, i32 3
  store i32 8, i32* %23, align 4
  %24 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %24, i32 0, i32 4
  store i32 256, i32* %25, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %27, i32 0, i32 3
  store i32 6, i32* %28, align 4
  %29 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %29, i32 0, i32 4
  store i32 64, i32* %30, align 4
  br label %48

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @E1000_EECD_SIZE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 8, i32 6
  %38 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @E1000_EECD_SIZE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 256, i32 64
  %46 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %31, %26, %21
  %49 = load i32, i32* @e1000_acquire_nvm_generic, align 4
  %50 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @e1000_read_nvm_microwire, align 4
  %54 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @e1000_release_nvm_generic, align 4
  %58 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @e1000_update_nvm_checksum_generic, align 4
  %62 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @e1000_valid_led_default_generic, align 4
  %66 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @e1000_validate_nvm_checksum_generic, align 4
  %70 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @e1000_write_nvm_microwire, align 4
  %74 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %77
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
