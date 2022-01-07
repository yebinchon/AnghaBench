; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_assp_halt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_assp_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@DSP_PORT_CONTROL_REG_B = common dso_local global i32 0, align 4
@REGB_STOP_CLOCK = common dso_local global i32 0, align 4
@REGB_ENABLE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @m3_assp_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_assp_halt(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %5 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %6 = call i32 @M3_LOCK_ASSERT(%struct.sc_info* %5)
  %7 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %8 = load i32, i32* @DSP_PORT_CONTROL_REG_B, align 4
  %9 = call i32 @m3_rd_1(%struct.sc_info* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @REGB_STOP_CLOCK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %4, align 4
  %14 = call i32 @DELAY(i32 10000)
  %15 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %16 = load i32, i32* @DSP_PORT_CONTROL_REG_B, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @REGB_ENABLE_RESET, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i32 @m3_wr_1(%struct.sc_info* %15, i32 %16, i32 %20)
  %22 = call i32 @DELAY(i32 10000)
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @M3_LOCK_ASSERT(%struct.sc_info*) #1

declare dso_local i32 @m3_rd_1(%struct.sc_info*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @m3_wr_1(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
