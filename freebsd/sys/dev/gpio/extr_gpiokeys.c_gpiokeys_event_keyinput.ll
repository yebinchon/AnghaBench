; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_event_keyinput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_event_keyinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokeys_softc = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_7__*, i32, i32)* }

@GPIOKEYS_GLOBAL_FLAG_POLLING = common dso_local global i32 0, align 4
@KBDIO_KEYINPUT = common dso_local global i32 0, align 4
@NOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpiokeys_softc*)* @gpiokeys_event_keyinput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiokeys_event_keyinput(%struct.gpiokeys_softc* %0) #0 {
  %2 = alloca %struct.gpiokeys_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.gpiokeys_softc* %0, %struct.gpiokeys_softc** %2, align 8
  %4 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %2, align 8
  %5 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @GPIOKEYS_GLOBAL_FLAG_POLLING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %2, align 8
  %13 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %12, i32 0, i32 1
  %14 = call i64 @KBD_IS_ACTIVE(%struct.TYPE_7__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %2, align 8
  %18 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %17, i32 0, i32 1
  %19 = call i64 @KBD_IS_BUSY(%struct.TYPE_7__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %2, align 8
  %23 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %25, align 8
  %27 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %2, align 8
  %28 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %27, i32 0, i32 1
  %29 = load i32, i32* @KBDIO_KEYINPUT, align 4
  %30 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %2, align 8
  %31 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %26(%struct.TYPE_7__* %28, i32 %29, i32 %34)
  br label %46

36:                                               ; preds = %16, %11
  br label %37

37:                                               ; preds = %41, %36
  %38 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %2, align 8
  %39 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %38, i32 0, i32 1
  %40 = call i32 @gpiokeys_read_char(%struct.TYPE_7__* %39, i32 0)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @NOKEY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %37, label %45

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %10, %45, %21
  ret void
}

declare dso_local i64 @KBD_IS_ACTIVE(%struct.TYPE_7__*) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_7__*) #1

declare dso_local i32 @gpiokeys_read_char(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
