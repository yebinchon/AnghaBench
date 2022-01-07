; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_attach_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_attach_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32 }
%struct.acpi_uhub_softc = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_hub* }

@ENXIO = common dso_local global i32 0, align 4
@M_USBDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_uhub_attach_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_uhub_attach_common(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca %struct.acpi_uhub_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.acpi_uhub_softc* @device_get_softc(i32 %7)
  store %struct.acpi_uhub_softc* %8, %struct.acpi_uhub_softc** %4, align 8
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.usb_hub*, %struct.usb_hub** %14, align 8
  store %struct.usb_hub* %15, %struct.usb_hub** %3, align 8
  %16 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %17 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %22 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_USBDEV, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @malloc(i32 %26, i32 %27, i32 %30)
  %32 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %2, align 4
  %35 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @acpi_usb_hub_port_probe(i32 %34, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @ACPI_SUCCESS(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.acpi_uhub_softc* @device_get_softc(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @acpi_usb_hub_port_probe(i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
