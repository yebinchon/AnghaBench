; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_eeprom_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_eeprom_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@RT2870_EEPROM_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*, i32, i32*)* @run_eeprom_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_eeprom_read_2(%struct.run_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.run_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @RT2870_EEPROM_READ, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @USETW(i32 %17, i32 0)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @USETW(i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @USETW(i32 %24, i32 4)
  %26 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %27 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %30 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %29, i32 0, i32 0
  %31 = call i32 @usbd_do_request(i32 %28, i32* %30, %struct.TYPE_3__* %7, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @le16toh(i32 %35)
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %40

38:                                               ; preds = %3
  %39 = load i32*, i32** %6, align 8
  store i32 65535, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(i32, i32*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
