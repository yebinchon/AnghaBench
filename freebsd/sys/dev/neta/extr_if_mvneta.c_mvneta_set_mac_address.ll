; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/neta/extr_if_mvneta.c_mvneta_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/neta/extr_if_mvneta.c_mvneta_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_softc = type { i32 }

@MVNETA_MACAL = common dso_local global i32 0, align 4
@MVNETA_MACAH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_softc*, i32*)* @mvneta_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_set_mac_address(%struct.mvneta_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.mvneta_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvneta_softc* %0, %struct.mvneta_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 4
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 5
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 24
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = or i32 %18, %22
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %23, %27
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 0
  %33 = or i32 %28, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.mvneta_softc*, %struct.mvneta_softc** %3, align 8
  %35 = load i32, i32* @MVNETA_MACAL, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @MVNETA_WRITE(%struct.mvneta_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.mvneta_softc*, %struct.mvneta_softc** %3, align 8
  %39 = load i32, i32* @MVNETA_MACAH, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @MVNETA_WRITE(%struct.mvneta_softc* %38, i32 %39, i32 %40)
  ret i32 0
}

declare dso_local i32 @MVNETA_WRITE(%struct.mvneta_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
