; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_timeout_change_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_timeout_change_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@timeout_rxl_tab = common dso_local global i64* null, align 8
@rxl_tab = common dso_local global i32* null, align 8
@CSR0 = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*)* @timeout_change_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeout_change_level(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %3 = load i64*, i64** @timeout_rxl_tab, align 8
  %4 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %5 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i64, i64* %3, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = icmp uge i64 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %18 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32*, i32** @rxl_tab, align 8
  %21 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %22 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %27 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %30 = load i32, i32* @CSR0, align 4
  %31 = call i32 @sbni_inb(%struct.sbni_softc* %29, i32 %30)
  %32 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %33 = load i32, i32* @CSR1, align 4
  %34 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %35 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %34, i32 0, i32 4
  %36 = bitcast %struct.TYPE_2__* %35 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sbni_outb(%struct.sbni_softc* %32, i32 %33, i32 %37)
  %39 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %40 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %43 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %45 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  ret void
}

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
