; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { i32, i32, i32*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UKBD_FLAG_GONE = common dso_local global i32 0, align 4
@UKBD_FLAG_ATTACHED = common dso_local global i32 0, align 4
@UKBD_INTR_DT_0 = common dso_local global i64 0, align 8
@UKBD_INTR_DT_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"WARNING: kbd_unregister() returned non-zero! (ignored)\0A\00", align 1
@UKBD_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ukbd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ukbd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ukbd_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ukbd_softc* @device_get_softc(i32 %5)
  store %struct.ukbd_softc* %6, %struct.ukbd_softc** %3, align 8
  %7 = call i32 (...) @UKBD_LOCK_ASSERT()
  %8 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @UKBD_FLAG_GONE, align 4
  %10 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %14, i32 0, i32 1
  %16 = call i32 @usb_callout_stop(i32* %15)
  %17 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UKBD_FLAG_ATTACHED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %1
  %24 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @UKBD_INTR_DT_0, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usbd_transfer_stop(i32 %29)
  %31 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @UKBD_INTR_DT_1, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usbd_transfer_stop(i32 %36)
  %38 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %38, i32 0, i32 5
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  %41 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %42 = call i32 @ukbd_interrupt(%struct.ukbd_softc* %41)
  br label %43

43:                                               ; preds = %23, %1
  %44 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %44, i32 0, i32 3
  %46 = call i32 @ukbd_disable(%struct.TYPE_5__* %45)
  %47 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %47, i32 0, i32 3
  %49 = call i64 @KBD_IS_CONFIGURED(%struct.TYPE_5__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %52, i32 0, i32 3
  %54 = call i32 @kbd_unregister(%struct.TYPE_5__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @UKBD_N_TRANSFER, align 4
  %69 = call i32 @usbd_transfer_unsetup(i32* %67, i32 %68)
  %70 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %70, i32 0, i32 1
  %72 = call i32 @usb_callout_drain(i32* %71)
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @device_get_nameunit(i32 %73)
  %75 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  ret i32 0
}

declare dso_local %struct.ukbd_softc* @device_get_softc(i32) #1

declare dso_local i32 @UKBD_LOCK_ASSERT(...) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @usb_callout_stop(i32*) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ukbd_interrupt(%struct.ukbd_softc*) #1

declare dso_local i32 @ukbd_disable(%struct.TYPE_5__*) #1

declare dso_local i64 @KBD_IS_CONFIGURED(%struct.TYPE_5__*) #1

declare dso_local i32 @kbd_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
