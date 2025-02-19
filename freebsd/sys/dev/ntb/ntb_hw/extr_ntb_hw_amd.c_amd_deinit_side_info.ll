; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_deinit_side_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_deinit_side_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { i32 }

@AMD_SIDEINFO_OFFSET = common dso_local global i32 0, align 4
@AMD_SIDE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_ntb_softc*)* @amd_deinit_side_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_deinit_side_info(%struct.amd_ntb_softc* %0) #0 {
  %2 = alloca %struct.amd_ntb_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.amd_ntb_softc* %0, %struct.amd_ntb_softc** %2, align 8
  %4 = load i32, i32* @AMD_SIDEINFO_OFFSET, align 4
  %5 = call i32 @amd_ntb_reg_read(i32 4, i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @AMD_SIDE_READY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @AMD_SIDE_READY, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @AMD_SIDEINFO_OFFSET, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @amd_ntb_reg_write(i32 4, i32 %15, i32 %16)
  %18 = load i32, i32* @AMD_SIDEINFO_OFFSET, align 4
  %19 = call i32 @amd_ntb_reg_read(i32 4, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @amd_ntb_reg_read(i32, i32) #1

declare dso_local i32 @amd_ntb_reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
