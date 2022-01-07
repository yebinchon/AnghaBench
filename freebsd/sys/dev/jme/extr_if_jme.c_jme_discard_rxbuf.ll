; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_discard_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_discard_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.jme_desc* }
%struct.jme_desc = type { i8*, i8* }

@JME_RD_OWN = common dso_local global i32 0, align 4
@JME_RD_INTR = common dso_local global i32 0, align 4
@JME_RD_64BIT = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*, i32)* @jme_discard_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_discard_rxbuf(%struct.jme_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.jme_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_desc*, align 8
  store %struct.jme_softc* %0, %struct.jme_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %7 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.jme_desc*, %struct.jme_desc** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.jme_desc, %struct.jme_desc* %9, i64 %11
  store %struct.jme_desc* %12, %struct.jme_desc** %5, align 8
  %13 = load i32, i32* @JME_RD_OWN, align 4
  %14 = load i32, i32* @JME_RD_INTR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @JME_RD_64BIT, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @htole32(i32 %17)
  %19 = load %struct.jme_desc*, %struct.jme_desc** %5, align 8
  %20 = getelementptr inbounds %struct.jme_desc, %struct.jme_desc* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @MCLBYTES, align 4
  %22 = call i8* @htole32(i32 %21)
  %23 = load %struct.jme_desc*, %struct.jme_desc** %5, align 8
  %24 = getelementptr inbounds %struct.jme_desc, %struct.jme_desc* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  ret void
}

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
