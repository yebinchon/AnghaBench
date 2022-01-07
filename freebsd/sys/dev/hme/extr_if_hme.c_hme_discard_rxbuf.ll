; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_discard_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_discard_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@HME_PCI = common dso_local global i32 0, align 4
@HME_XD_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hme_softc*, i32)* @hme_discard_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_discard_rxbuf(%struct.hme_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hme_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.hme_softc* %0, %struct.hme_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %6 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HME_PCI, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @HME_XD_OWN, align 4
  %16 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %17 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %18 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @HME_DESC_RXLEN(%struct.hme_softc* %16, i32* %23)
  %25 = call i32 @HME_XD_ENCODE_RSIZE(i32 %24)
  %26 = or i32 %15, %25
  %27 = call i32 @HME_XD_SETFLAGS(i32 %9, i32 %13, i32 %14, i32 %26)
  ret void
}

declare dso_local i32 @HME_XD_SETFLAGS(i32, i32, i32, i32) #1

declare dso_local i32 @HME_XD_ENCODE_RSIZE(i32) #1

declare dso_local i32 @HME_DESC_RXLEN(%struct.hme_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
