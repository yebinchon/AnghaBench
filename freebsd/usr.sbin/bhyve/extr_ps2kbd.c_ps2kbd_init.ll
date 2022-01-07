; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2kbd.c_ps2kbd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2kbd.c_ps2kbd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2kbd_softc = type { %struct.atkbdc_softc*, i32 }
%struct.atkbdc_softc = type { i32 }

@ps2kbd_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ps2kbd_softc* @ps2kbd_init(%struct.atkbdc_softc* %0) #0 {
  %2 = alloca %struct.atkbdc_softc*, align 8
  %3 = alloca %struct.ps2kbd_softc*, align 8
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %2, align 8
  %4 = call %struct.ps2kbd_softc* @calloc(i32 1, i32 16)
  store %struct.ps2kbd_softc* %4, %struct.ps2kbd_softc** %3, align 8
  %5 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %5, i32 0, i32 1
  %7 = call i32 @pthread_mutex_init(i32* %6, i32* null)
  %8 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %9 = call i32 @fifo_init(%struct.ps2kbd_softc* %8)
  %10 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %11 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %11, i32 0, i32 0
  store %struct.atkbdc_softc* %10, %struct.atkbdc_softc** %12, align 8
  %13 = load i32, i32* @ps2kbd_event, align 4
  %14 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %15 = call i32 @console_kbd_register(i32 %13, %struct.ps2kbd_softc* %14, i32 1)
  %16 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  ret %struct.ps2kbd_softc* %16
}

declare dso_local %struct.ps2kbd_softc* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @fifo_init(%struct.ps2kbd_softc*) #1

declare dso_local i32 @console_kbd_register(i32, %struct.ps2kbd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
