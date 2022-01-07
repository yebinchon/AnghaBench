; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_root_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_root_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_uhub_softc = type { i32* }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_uhub_root_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_uhub_root_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_uhub_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.acpi_uhub_softc* @device_get_softc(i32 %6)
  store %struct.acpi_uhub_softc* %7, %struct.acpi_uhub_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %9, i32 0, i32 0
  %11 = call i32 @acpi_uhub_find_rh(i32 %8, i32** %10)
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %5, align 8
  %16 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @uhub_attach(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @acpi_uhub_attach_common(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @acpi_uhub_detach(i32 %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %25, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.acpi_uhub_softc* @device_get_softc(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_uhub_find_rh(i32, i32**) #1

declare dso_local i32 @uhub_attach(i32) #1

declare dso_local i32 @acpi_uhub_attach_common(i32) #1

declare dso_local i32 @acpi_uhub_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
