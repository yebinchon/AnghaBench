; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_adb_kbd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_adb_kbd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_kbd_softc = type { i32, i32, i32 }

@KBD_DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adb_kbd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adb_kbd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_kbd_softc*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.adb_kbd_softc* @device_get_softc(i32 %5)
  store %struct.adb_kbd_softc* %6, %struct.adb_kbd_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @adb_set_autopoll(i32 %7, i32 0)
  %9 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %10 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %9, i32 0, i32 2
  %11 = call i32 @callout_stop(i32* %10)
  %12 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %13 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %12, i32 0, i32 1
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load i32, i32* @KBD_DRIVER_NAME, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @device_get_unit(i32 %16)
  %18 = call i32 @kbd_find_keyboard(i32 %15, i32 %17)
  %19 = call i32* @kbd_get_keyboard(i32 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @kbdd_disable(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @kbdd_term(i32* %22)
  %24 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %25 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %24, i32 0, i32 1
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %28 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %27, i32 0, i32 1
  %29 = call i32 @mtx_destroy(i32* %28)
  %30 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %31 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %30, i32 0, i32 0
  %32 = call i32 @cv_destroy(i32* %31)
  ret i32 0
}

declare dso_local %struct.adb_kbd_softc* @device_get_softc(i32) #1

declare dso_local i32 @adb_set_autopoll(i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @kbd_get_keyboard(i32) #1

declare dso_local i32 @kbd_find_keyboard(i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @kbdd_disable(i32*) #1

declare dso_local i32 @kbdd_term(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
