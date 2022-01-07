; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_rx_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_rx_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32 }

@MGE_PORT_INT_RXERRQ0 = common dso_local global i32 0, align 4
@MGE_PORT_INT_CAUSE = common dso_local global i32 0, align 4
@MGE_PORT_INT_RXQ0 = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXT_RXOR = common dso_local global i32 0, align 4
@MGE_PORT_INT_CAUSE_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*, i32, i32)* @mge_intr_rx_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_intr_rx_check(%struct.mge_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MGE_PORT_INT_RXERRQ0, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %13 = call i32 @mge_reinit_rx(%struct.mge_softc* %12)
  %14 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %15 = load i32, i32* @MGE_PORT_INT_CAUSE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MGE_PORT_INT_RXERRQ0, align 4
  %18 = and i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = call i32 @MGE_WRITE(%struct.mge_softc* %14, i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %11, %3
  %22 = load i32, i32* @MGE_PORT_INT_RXQ0, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @MGE_PORT_INT_EXT_RXOR, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30, %21
  %34 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %35 = load i32, i32* @MGE_PORT_INT_CAUSE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @MGE_WRITE(%struct.mge_softc* %34, i32 %35, i32 %37)
  %39 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %40 = load i32, i32* @MGE_PORT_INT_CAUSE_EXT, align 4
  %41 = load i32, i32* %6, align 4
  %42 = xor i32 %41, -1
  %43 = call i32 @MGE_WRITE(%struct.mge_softc* %39, i32 %40, i32 %42)
  %44 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %45 = call i32 @mge_intr_rx_locked(%struct.mge_softc* %44, i32 -1)
  br label %46

46:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @mge_reinit_rx(%struct.mge_softc*) #1

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #1

declare dso_local i32 @mge_intr_rx_locked(%struct.mge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
