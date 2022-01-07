; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_set_lan_id_multi_port_pcie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_set_lan_id_multi_port_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_bus_info }
%struct.e1000_bus_info = type { i32 }

@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FUNC_MASK = common dso_local global i32 0, align 4
@E1000_STATUS_FUNC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_set_lan_id_multi_port_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_set_lan_id_multi_port_pcie(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_bus_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_bus_info* %6, %struct.e1000_bus_info** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = load i32, i32* @E1000_STATUS, align 4
  %9 = call i32 @E1000_READ_REG(%struct.e1000_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @E1000_STATUS_FUNC_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @E1000_STATUS_FUNC_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
