; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_timer.c_riscv_timer_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_timer.c_riscv_timer_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riscv_timer_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@sip = common dso_local global i32 0, align 4
@SIP_STIP = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @riscv_timer_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riscv_timer_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.riscv_timer_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.riscv_timer_softc*
  store %struct.riscv_timer_softc* %5, %struct.riscv_timer_softc** %3, align 8
  %6 = load i32, i32* @sip, align 4
  %7 = load i32, i32* @SIP_STIP, align 4
  %8 = call i32 @csr_clear(i32 %6, i32 %7)
  %9 = load %struct.riscv_timer_softc*, %struct.riscv_timer_softc** %3, align 8
  %10 = getelementptr inbounds %struct.riscv_timer_softc, %struct.riscv_timer_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.riscv_timer_softc*, %struct.riscv_timer_softc** %3, align 8
  %16 = getelementptr inbounds %struct.riscv_timer_softc, %struct.riscv_timer_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %17, align 8
  %19 = load %struct.riscv_timer_softc*, %struct.riscv_timer_softc** %3, align 8
  %20 = getelementptr inbounds %struct.riscv_timer_softc, %struct.riscv_timer_softc* %19, i32 0, i32 0
  %21 = load %struct.riscv_timer_softc*, %struct.riscv_timer_softc** %3, align 8
  %22 = getelementptr inbounds %struct.riscv_timer_softc, %struct.riscv_timer_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %18(%struct.TYPE_2__* %20, i32 %24)
  br label %26

26:                                               ; preds = %14, %1
  %27 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %27
}

declare dso_local i32 @csr_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
