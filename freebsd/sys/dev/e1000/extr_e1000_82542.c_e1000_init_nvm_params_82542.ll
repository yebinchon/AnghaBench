; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_init_nvm_params_82542.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_init_nvm_params_82542.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_init_nvm_params_82542\00", align 1
@e1000_nvm_eeprom_microwire = common dso_local global i32 0, align 4
@e1000_read_nvm_microwire = common dso_local global i32 0, align 4
@e1000_stop_nvm = common dso_local global i32 0, align 4
@e1000_write_nvm_microwire = common dso_local global i32 0, align 4
@e1000_update_nvm_checksum_generic = common dso_local global i32 0, align 4
@e1000_validate_nvm_checksum_generic = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_nvm_params_82542 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_nvm_params_82542(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  store %struct.e1000_nvm_info* %5, %struct.e1000_nvm_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %7, i32 0, i32 0
  store i32 6, i32* %8, align 4
  %9 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %9, i32 0, i32 1
  store i32 50, i32* %10, align 4
  %11 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %11, i32 0, i32 2
  store i32 3, i32* %12, align 4
  %13 = load i32, i32* @e1000_nvm_eeprom_microwire, align 4
  %14 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %16, i32 0, i32 3
  store i32 64, i32* %17, align 4
  %18 = load i32, i32* @e1000_read_nvm_microwire, align 4
  %19 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @e1000_stop_nvm, align 4
  %23 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @e1000_write_nvm_microwire, align 4
  %27 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @e1000_update_nvm_checksum_generic, align 4
  %31 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @e1000_validate_nvm_checksum_generic, align 4
  %35 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %38
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
