; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_set_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_set_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i32 }

@AR_MAC_REG_BSSID_L = common dso_local global i32 0, align 4
@AR_MAC_REG_BSSID_H = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otus_set_bssid(%struct.otus_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.otus_softc*, align 8
  %4 = alloca i32*, align 8
  store %struct.otus_softc* %0, %struct.otus_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %6 = call i32 @OTUS_LOCK_ASSERT(%struct.otus_softc* %5)
  %7 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %8 = load i32, i32* @AR_MAC_REG_BSSID_L, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 8
  %16 = or i32 %11, %15
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %16, %20
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 24
  %26 = or i32 %21, %25
  %27 = call i32 @otus_write(%struct.otus_softc* %7, i32 %8, i32 %26)
  %28 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %29 = load i32, i32* @AR_MAC_REG_BSSID_H, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  %38 = call i32 @otus_write(%struct.otus_softc* %28, i32 %29, i32 %37)
  %39 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %40 = call i32 @otus_write_barrier(%struct.otus_softc* %39)
  ret i32 %40
}

declare dso_local i32 @OTUS_LOCK_ASSERT(%struct.otus_softc*) #1

declare dso_local i32 @otus_write(%struct.otus_softc*, i32, i32) #1

declare dso_local i32 @otus_write_barrier(%struct.otus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
