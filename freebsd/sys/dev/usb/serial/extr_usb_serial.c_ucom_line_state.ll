; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_line_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_line_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UCOM_FLAG_HL_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"on=0x%02x, off=0x%02x\0A\00", align 1
@ucom_cfg_line_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i32, i32)* @ucom_line_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_line_state(%struct.ucom_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %7, i32 %8)
  %10 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @UCOM_FLAG_HL_READY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %55

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %43 = load i32, i32* @ucom_cfg_line_state, align 4
  %44 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @ucom_queue_command(%struct.ucom_softc* %42, i32 %43, i32* null, i32* %48, i32* %53)
  br label %55

55:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i32 @ucom_queue_command(%struct.ucom_softc*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
