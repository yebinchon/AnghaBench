; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32*, i32, i32, i32, i64 }

@BFE_PCI_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_get_config(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca [128 x i32], align 16
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %4 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %5 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %6 = call i32 @bfe_read_eeprom(%struct.bfe_softc* %4, i32* %5)
  %7 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 79
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 78
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %14, i32* %18, align 4
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 81
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %20, i32* %24, align 4
  %25 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 80
  %26 = load i32, i32* %25, align 16
  %27 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 %26, i32* %30, align 4
  %31 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 83
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %34 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32 %32, i32* %36, align 4
  %37 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 82
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %40 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  store i32 %38, i32* %42, align 4
  %43 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 90
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 31
  %46 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 90
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 14
  %51 = and i32 %50, 1
  %52 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %53 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @BFE_PCI_DMA, align 4
  %57 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %58 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local i32 @bfe_read_eeprom(%struct.bfe_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
