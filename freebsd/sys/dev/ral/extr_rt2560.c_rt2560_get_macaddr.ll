; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32 }

@RT2560_CSR3 = common dso_local global i32 0, align 4
@RT2560_CSR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*, i32*)* @rt2560_get_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_get_macaddr(%struct.rt2560_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %7 = load i32, i32* @RT2560_CSR3, align 4
  %8 = call i32 @RAL_READ(%struct.rt2560_softc* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 255
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 24
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %28 = load i32, i32* @RT2560_CSR4, align 4
  %29 = call i32 @RAL_READ(%struct.rt2560_softc* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 255
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @RAL_READ(%struct.rt2560_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
