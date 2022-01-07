; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.thread = type { i32 }
%struct.ucom_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ucom_softc*, i32, i32, i32, %struct.thread*)* }

@MA_OWNED = common dso_local global i32 0, align 4
@UCOM_FLAG_HL_READY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cmd = 0x%08lx\0A\00", align 1
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i32, %struct.thread*)* @ucom_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucom_ioctl(%struct.tty* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.ucom_softc*, align 8
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.tty*, %struct.tty** %6, align 8
  %13 = call %struct.ucom_softc* @tty_softc(%struct.tty* %12)
  store %struct.ucom_softc* %13, %struct.ucom_softc** %10, align 8
  %14 = load %struct.ucom_softc*, %struct.ucom_softc** %10, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %14, i32 %15)
  %17 = load %struct.ucom_softc*, %struct.ucom_softc** %10, align 8
  %18 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UCOM_FLAG_HL_READY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EIO, align 4
  store i32 %24, i32* %5, align 4
  br label %68

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %35 [
    i32 129, label %29
    i32 131, label %32
  ]

29:                                               ; preds = %25
  %30 = load %struct.ucom_softc*, %struct.ucom_softc** %10, align 8
  %31 = call i32 @ucom_break(%struct.ucom_softc* %30, i32 1)
  store i32 0, i32* %11, align 4
  br label %66

32:                                               ; preds = %25
  %33 = load %struct.ucom_softc*, %struct.ucom_softc** %10, align 8
  %34 = call i32 @ucom_break(%struct.ucom_softc* %33, i32 0)
  store i32 0, i32* %11, align 4
  br label %66

35:                                               ; preds = %25
  %36 = load %struct.ucom_softc*, %struct.ucom_softc** %10, align 8
  %37 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.ucom_softc*, i32, i32, i32, %struct.thread*)*, i32 (%struct.ucom_softc*, i32, i32, i32, %struct.thread*)** %39, align 8
  %41 = icmp ne i32 (%struct.ucom_softc*, i32, i32, i32, %struct.thread*)* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.ucom_softc*, %struct.ucom_softc** %10, align 8
  %44 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.ucom_softc*, i32, i32, i32, %struct.thread*)*, i32 (%struct.ucom_softc*, i32, i32, i32, %struct.thread*)** %46, align 8
  %48 = load %struct.ucom_softc*, %struct.ucom_softc** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.thread*, %struct.thread** %9, align 8
  %52 = call i32 %47(%struct.ucom_softc* %48, i32 %49, i32 %50, i32 0, %struct.thread* %51)
  store i32 %52, i32* %11, align 4
  br label %55

53:                                               ; preds = %35
  %54 = load i32, i32* @ENOIOCTL, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %42
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ENOIOCTL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.ucom_softc*, %struct.ucom_softc** %10, align 8
  %63 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %62, i32 0, i32 1
  %64 = call i32 @pps_ioctl(i32 %60, i32 %61, i32* %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %59, %55
  br label %66

66:                                               ; preds = %65, %32, %29
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %23
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.ucom_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @ucom_break(%struct.ucom_softc*, i32) #1

declare dso_local i32 @pps_ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
