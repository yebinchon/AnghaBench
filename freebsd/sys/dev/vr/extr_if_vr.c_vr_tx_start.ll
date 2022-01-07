; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_tx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@VR_CR0 = common dso_local global i32 0, align 4
@VR_CR0_TX_ON = common dso_local global i32 0, align 4
@VR_TXADDR = common dso_local global i32 0, align 4
@VR_CR0_TX_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vr_softc*)* @vr_tx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_tx_start(%struct.vr_softc* %0) #0 {
  %2 = alloca %struct.vr_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %2, align 8
  %5 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %6 = load i32, i32* @VR_CR0, align 4
  %7 = call i32 @CSR_READ_1(%struct.vr_softc* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @VR_CR0_TX_ON, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %14 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @VR_TX_RING_ADDR(%struct.vr_softc* %13, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %20 = load i32, i32* @VR_TXADDR, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @VR_ADDR_LO(i32 %21)
  %23 = call i32 @CSR_WRITE_4(%struct.vr_softc* %19, i32 %20, i32 %22)
  %24 = load i32, i32* @VR_CR0_TX_ON, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %28 = load i32, i32* @VR_CR0, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CSR_WRITE_1(%struct.vr_softc* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %12, %1
  %32 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %33 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %39 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %38, i32 0, i32 0
  store i32 5, i32* %39, align 8
  %40 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %41 = load i32, i32* @VR_CR0, align 4
  %42 = load i32, i32* @VR_CR0_TX_GO, align 4
  %43 = call i32 @VR_SETBIT(%struct.vr_softc* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @CSR_READ_1(%struct.vr_softc*, i32) #1

declare dso_local i32 @VR_TX_RING_ADDR(%struct.vr_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @VR_ADDR_LO(i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @VR_SETBIT(%struct.vr_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
