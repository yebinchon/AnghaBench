; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.ucom_softc = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.ucom_softc*)* }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tp=%p\0A\00", align 1
@UCOM_FLAG_HL_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"tp=%p already closed\0A\00", align 1
@ucom_cfg_close = common dso_local global i32 0, align 4
@UCOM_FLAG_RTS_IFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @ucom_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_close(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.ucom_softc*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = call %struct.ucom_softc* @tty_softc(%struct.tty* %4)
  store %struct.ucom_softc* %5, %struct.ucom_softc** %3, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %6, i32 %7)
  %9 = load %struct.tty*, %struct.tty** %2, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.tty* %9)
  %11 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @UCOM_FLAG_HL_READY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.tty*, %struct.tty** %2, align 8
  %19 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.tty* %18)
  br label %58

20:                                               ; preds = %1
  %21 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %22 = call i32 @ucom_shutdown(%struct.ucom_softc* %21)
  %23 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %24 = load i32, i32* @ucom_cfg_close, align 4
  %25 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @ucom_queue_command(%struct.ucom_softc* %23, i32 %24, i32* null, i32* %29, i32* %34)
  %36 = load i32, i32* @UCOM_FLAG_HL_READY, align 4
  %37 = load i32, i32* @UCOM_FLAG_RTS_IFLOW, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %47, align 8
  %49 = icmp ne i32 (%struct.ucom_softc*)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %20
  %51 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %54, align 8
  %56 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %57 = call i32 %55(%struct.ucom_softc* %56)
  br label %58

58:                                               ; preds = %17, %50, %20
  ret void
}

declare dso_local %struct.ucom_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, %struct.tty*) #1

declare dso_local i32 @ucom_shutdown(%struct.ucom_softc*) #1

declare dso_local i32 @ucom_queue_command(%struct.ucom_softc*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
