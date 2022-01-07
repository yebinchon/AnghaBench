; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8481_hw_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8481_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32 }

@MISC_REGISTERS_GPIO_1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*)* @elink_8481_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_8481_hw_reset(%struct.elink_phy* %0, %struct.elink_params* %1) #0 {
  %3 = alloca %struct.elink_phy*, align 8
  %4 = alloca %struct.elink_params*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %3, align 8
  store %struct.elink_params* %1, %struct.elink_params** %4, align 8
  %5 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %6 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MISC_REGISTERS_GPIO_1, align 4
  %9 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %10 = call i32 @elink_cb_gpio_write(i32 %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MISC_REGISTERS_GPIO_1, align 4
  %15 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %16 = call i32 @elink_cb_gpio_write(i32 %13, i32 %14, i32 %15, i32 1)
  ret void
}

declare dso_local i32 @elink_cb_gpio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
