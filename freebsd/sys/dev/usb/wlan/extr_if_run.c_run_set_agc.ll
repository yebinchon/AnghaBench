; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_set_agc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_set_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, i32)* @run_set_agc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_set_agc(%struct.run_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %7 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 13682
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %12 = call i32 @run_bbp_read(%struct.run_softc* %11, i32 27, i32* %5)
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -97
  store i32 %14, i32* %5, align 4
  %15 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @run_bbp_write(%struct.run_softc* %15, i32 27, i32 %16)
  %18 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @run_bbp_write(%struct.run_softc* %18, i32 66, i32 %19)
  %21 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, 32
  %24 = call i32 @run_bbp_write(%struct.run_softc* %21, i32 27, i32 %23)
  %25 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @run_bbp_write(%struct.run_softc* %25, i32 66, i32 %26)
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @run_bbp_write(%struct.run_softc* %29, i32 66, i32 %30)
  br label %32

32:                                               ; preds = %28, %10
  ret void
}

declare dso_local i32 @run_bbp_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
