; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hub_result = type { i32 }
%struct.acpi_uhub_softc = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@Giant = common dso_local global i32 0, align 4
@ACPI_IVAR_HANDLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @acpi_uhub_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_uhub_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.hub_result, align 4
  %11 = alloca %struct.acpi_uhub_softc*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.acpi_uhub_softc* @device_get_softc(i32 %13)
  store %struct.acpi_uhub_softc* %14, %struct.acpi_uhub_softc** %11, align 8
  %15 = call i32 @mtx_lock(i32* @Giant)
  %16 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %11, align 8
  %17 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @uhub_find_iface_index(i32 %21, i32 %22, %struct.hub_result* %10)
  %24 = call i32 @mtx_unlock(i32* @Giant)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ACPI_IVAR_HANDLE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %11, align 8
  %36 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %11, align 8
  %41 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i64, i64* %12, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %5, align 4
  br label %56

54:                                               ; preds = %39, %32, %28, %4
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.acpi_uhub_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @uhub_find_iface_index(i32, i32, %struct.hub_result*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
