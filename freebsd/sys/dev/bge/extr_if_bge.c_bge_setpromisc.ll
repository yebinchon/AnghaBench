; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_setpromisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_setpromisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@BGE_RX_MODE = common dso_local global i32 0, align 4
@BGE_RXMODE_RX_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_setpromisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_setpromisc(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %4 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %5 = call i32 @BGE_LOCK_ASSERT(%struct.bge_softc* %4)
  %6 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @if_getflags(i32 %9)
  %11 = load i32, i32* @IFF_PROMISC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %16 = load i32, i32* @BGE_RX_MODE, align 4
  %17 = load i32, i32* @BGE_RXMODE_RX_PROMISC, align 4
  %18 = call i32 @BGE_SETBIT(%struct.bge_softc* %15, i32 %16, i32 %17)
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %21 = load i32, i32* @BGE_RX_MODE, align 4
  %22 = load i32, i32* @BGE_RXMODE_RX_PROMISC, align 4
  %23 = call i32 @BGE_CLRBIT(%struct.bge_softc* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @BGE_LOCK_ASSERT(%struct.bge_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @BGE_SETBIT(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @BGE_CLRBIT(%struct.bge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
