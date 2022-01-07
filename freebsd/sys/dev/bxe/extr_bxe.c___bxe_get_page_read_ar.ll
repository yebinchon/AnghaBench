; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c___bxe_get_page_read_ar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c___bxe_get_page_read_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_addr = type { i32 }
%struct.bxe_softc = type { i32 }

@page_read_regs_e2 = common dso_local global %struct.reg_addr* null, align 8
@page_read_regs_e3 = common dso_local global %struct.reg_addr* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reg_addr* (%struct.bxe_softc*)* @__bxe_get_page_read_ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reg_addr* @__bxe_get_page_read_ar(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.reg_addr*, align 8
  %3 = alloca %struct.bxe_softc*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %5 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load %struct.reg_addr*, %struct.reg_addr** @page_read_regs_e2, align 8
  store %struct.reg_addr* %8, %struct.reg_addr** %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load %struct.reg_addr*, %struct.reg_addr** @page_read_regs_e3, align 8
  store %struct.reg_addr* %14, %struct.reg_addr** %2, align 8
  br label %16

15:                                               ; preds = %9
  store %struct.reg_addr* null, %struct.reg_addr** %2, align 8
  br label %16

16:                                               ; preds = %15, %13, %7
  %17 = load %struct.reg_addr*, %struct.reg_addr** %2, align 8
  ret %struct.reg_addr* %17
}

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
