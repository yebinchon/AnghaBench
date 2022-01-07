; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intrs_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intrs_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32 }

@MGE_PORT_INT_MASK = common dso_local global i32 0, align 4
@MGE_PORT_INT_RXQ0 = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXTEND = common dso_local global i32 0, align 4
@MGE_PORT_INT_RXERRQ0 = common dso_local global i32 0, align 4
@MGE_PORT_INT_MASK_EXT = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXT_TXERR0 = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXT_RXOR = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXT_TXUR = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXT_TXBUF0 = common dso_local global i32 0, align 4
@MGE_INT_CAUSE = common dso_local global i32 0, align 4
@MGE_INT_MASK = common dso_local global i32 0, align 4
@MGE_PORT_INT_CAUSE = common dso_local global i32 0, align 4
@MGE_PORT_INT_CAUSE_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*, i32)* @mge_intrs_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_intrs_ctrl(%struct.mge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mge_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %9 = load i32, i32* @MGE_PORT_INT_MASK, align 4
  %10 = load i32, i32* @MGE_PORT_INT_RXQ0, align 4
  %11 = load i32, i32* @MGE_PORT_INT_EXTEND, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MGE_PORT_INT_RXERRQ0, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @MGE_WRITE(%struct.mge_softc* %8, i32 %9, i32 %14)
  %16 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %17 = load i32, i32* @MGE_PORT_INT_MASK_EXT, align 4
  %18 = load i32, i32* @MGE_PORT_INT_EXT_TXERR0, align 4
  %19 = load i32, i32* @MGE_PORT_INT_EXT_RXOR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MGE_PORT_INT_EXT_TXUR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MGE_PORT_INT_EXT_TXBUF0, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @MGE_WRITE(%struct.mge_softc* %16, i32 %17, i32 %24)
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %28 = load i32, i32* @MGE_INT_CAUSE, align 4
  %29 = call i32 @MGE_WRITE(%struct.mge_softc* %27, i32 %28, i32 0)
  %30 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %31 = load i32, i32* @MGE_INT_MASK, align 4
  %32 = call i32 @MGE_WRITE(%struct.mge_softc* %30, i32 %31, i32 0)
  %33 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %34 = load i32, i32* @MGE_PORT_INT_CAUSE, align 4
  %35 = call i32 @MGE_WRITE(%struct.mge_softc* %33, i32 %34, i32 0)
  %36 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %37 = load i32, i32* @MGE_PORT_INT_CAUSE_EXT, align 4
  %38 = call i32 @MGE_WRITE(%struct.mge_softc* %36, i32 %37, i32 0)
  %39 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %40 = load i32, i32* @MGE_PORT_INT_MASK, align 4
  %41 = call i32 @MGE_WRITE(%struct.mge_softc* %39, i32 %40, i32 0)
  %42 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %43 = load i32, i32* @MGE_PORT_INT_MASK_EXT, align 4
  %44 = call i32 @MGE_WRITE(%struct.mge_softc* %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
