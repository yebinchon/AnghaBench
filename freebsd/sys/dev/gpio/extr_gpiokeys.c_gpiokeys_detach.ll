; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokeys_softc = type { i32, i32* }

@KBD_DRIVER_NAME = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpiokeys_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiokeys_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpiokeys_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.gpiokeys_softc* @device_get_softc(i32 %6)
  store %struct.gpiokeys_softc* %7, %struct.gpiokeys_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %11 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %16 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %17 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @gpiokeys_detach_key(%struct.gpiokeys_softc* %15, i32* %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load i32, i32* @KBD_DRIVER_NAME, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @device_get_unit(i32 %28)
  %30 = call i32 @kbd_find_keyboard(i32 %27, i32 %29)
  %31 = call i32* @kbd_get_keyboard(i32 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @kbd_unregister(i32* %32)
  %34 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %35 = call i32 @GPIOKEYS_LOCK_DESTROY(%struct.gpiokeys_softc* %34)
  %36 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %37 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %42 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = call i32 @free(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %26
  ret i32 0
}

declare dso_local %struct.gpiokeys_softc* @device_get_softc(i32) #1

declare dso_local i32 @gpiokeys_detach_key(%struct.gpiokeys_softc*, i32*) #1

declare dso_local i32* @kbd_get_keyboard(i32) #1

declare dso_local i32 @kbd_find_keyboard(i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @kbd_unregister(i32*) #1

declare dso_local i32 @GPIOKEYS_LOCK_DESTROY(%struct.gpiokeys_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
