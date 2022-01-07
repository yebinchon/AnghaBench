; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_m32_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_m32_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn_softc*)* @m32_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m32_init(%struct.mn_softc* %0) #0 {
  %2 = alloca %struct.mn_softc*, align 8
  store %struct.mn_softc* %0, %struct.mn_softc** %2, align 8
  %3 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 -2130409920, i32* %10, align 4
  %11 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 129, i32* %14, align 4
  %15 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32 -1, i32* %18, align 4
  %19 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32 1616904347, i32* %22, align 4
  %23 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32 0, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
