; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_busy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.ucom_softc = type { i32, i32 }

@ULSR_TXRDY = common dso_local global i32 0, align 4
@ULSR_TSRE = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sc = %p lsr 0x%02x\0A\00", align 1
@UCOM_FLAG_LSRTXIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @ucom_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucom_busy(%struct.tty* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = call %struct.ucom_softc* @tty_softc(%struct.tty* %6)
  store %struct.ucom_softc* %7, %struct.ucom_softc** %4, align 8
  %8 = load i32, i32* @ULSR_TXRDY, align 4
  %9 = load i32, i32* @ULSR_TSRE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %11, i32 %12)
  %14 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %15 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.ucom_softc* %14, i32 %17)
  %19 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UCOM_FLAG_LSRTXIDLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ucom_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.ucom_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
