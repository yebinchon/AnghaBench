; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_event_keyinput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_event_keyinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_7__*, i32, i32)* }

@UKBD_FLAG_POLLING = common dso_local global i32 0, align 4
@KBDIO_KEYINPUT = common dso_local global i32 0, align 4
@NOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ukbd_softc*)* @ukbd_event_keyinput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ukbd_event_keyinput(%struct.ukbd_softc* %0) #0 {
  %2 = alloca %struct.ukbd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %2, align 8
  %4 = call i32 (...) @UKBD_LOCK_ASSERT()
  %5 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @UKBD_FLAG_POLLING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %53

18:                                               ; preds = %12
  %19 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %19, i32 0, i32 2
  %21 = call i64 @KBD_IS_ACTIVE(%struct.TYPE_7__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %24, i32 0, i32 2
  %26 = call i64 @KBD_IS_BUSY(%struct.TYPE_7__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %32, align 8
  %34 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %34, i32 0, i32 2
  %36 = load i32, i32* @KBDIO_KEYINPUT, align 4
  %37 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %33(%struct.TYPE_7__* %35, i32 %36, i32 %41)
  br label %53

43:                                               ; preds = %23, %18
  br label %44

44:                                               ; preds = %48, %43
  %45 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %45, i32 0, i32 2
  %47 = call i32 @ukbd_read_char(%struct.TYPE_7__* %46, i32 0)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @NOKEY, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %44, label %52

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %11, %17, %52, %28
  ret void
}

declare dso_local i32 @UKBD_LOCK_ASSERT(...) #1

declare dso_local i64 @KBD_IS_ACTIVE(%struct.TYPE_7__*) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_7__*) #1

declare dso_local i32 @ukbd_read_char(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
