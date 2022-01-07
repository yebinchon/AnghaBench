; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_mac_filter_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_mac_filter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_port }
%struct.sfxge_port = type { i64 }

@SFXGE_PORT_STARTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_mac_filter_set(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sfxge_port*, align 8
  %4 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %5 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %5, i32 0, i32 0
  store %struct.sfxge_port* %6, %struct.sfxge_port** %3, align 8
  %7 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %8 = call i32 @SFXGE_PORT_LOCK(%struct.sfxge_port* %7)
  %9 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %10 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SFXGE_PORT_STARTED, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @__predict_true(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %19 = call i32 @sfxge_mac_filter_set_locked(%struct.sfxge_softc* %18)
  store i32 %19, i32* %4, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %23 = call i32 @SFXGE_PORT_UNLOCK(%struct.sfxge_port* %22)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @SFXGE_PORT_LOCK(%struct.sfxge_port*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @sfxge_mac_filter_set_locked(%struct.sfxge_softc*) #1

declare dso_local i32 @SFXGE_PORT_UNLOCK(%struct.sfxge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
