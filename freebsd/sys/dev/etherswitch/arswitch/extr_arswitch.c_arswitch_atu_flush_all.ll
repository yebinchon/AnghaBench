; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_atu_flush_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_atu_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.arswitch_softc.0*)* }
%struct.arswitch_softc.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arswitch_atu_flush_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_atu_flush_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arswitch_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.arswitch_softc* @device_get_softc(i32 %5)
  store %struct.arswitch_softc* %6, %struct.arswitch_softc** %3, align 8
  %7 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %8 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %7)
  %9 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %10 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.arswitch_softc.0*)*, i32 (%struct.arswitch_softc.0*)** %11, align 8
  %13 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %14 = bitcast %struct.arswitch_softc* %13 to %struct.arswitch_softc.0*
  %15 = call i32 %12(%struct.arswitch_softc.0* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %17 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %20 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %19)
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local %struct.arswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
