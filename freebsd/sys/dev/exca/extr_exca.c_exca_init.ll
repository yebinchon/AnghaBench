; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { i32, i32, i64, i32, i32, i32, i64, i64, i32 }

@exca_mem_getb = common dso_local global i32 0, align 4
@exca_mem_putb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exca_init(%struct.exca_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.exca_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %13 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 8
  %14 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %15 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %17 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %20 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %23 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %26 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %28 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @exca_mem_getb, align 4
  %30 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %31 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @exca_mem_putb, align 4
  %33 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %34 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
