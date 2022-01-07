; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_enable_ints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_enable_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@HOST_INT_CTRL = common dso_local global i32 0, align 4
@ASSP_INT_ENABLE = common dso_local global i32 0, align 4
@HV_INT_ENABLE = common dso_local global i32 0, align 4
@ASSP_CONTROL_C = common dso_local global i32 0, align 4
@ASSP_HOST_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @m3_enable_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m3_enable_ints(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %4 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %5 = load i32, i32* @HOST_INT_CTRL, align 4
  %6 = load i32, i32* @ASSP_INT_ENABLE, align 4
  %7 = load i32, i32* @HV_INT_ENABLE, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @m3_wr_2(%struct.sc_info* %4, i32 %5, i32 %8)
  %10 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %11 = load i32, i32* @ASSP_CONTROL_C, align 4
  %12 = call i32 @m3_rd_1(%struct.sc_info* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %14 = load i32, i32* @ASSP_CONTROL_C, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ASSP_HOST_INT_ENABLE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @m3_wr_1(%struct.sc_info* %13, i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @m3_wr_2(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @m3_rd_1(%struct.sc_info*, i32) #1

declare dso_local i32 @m3_wr_1(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
