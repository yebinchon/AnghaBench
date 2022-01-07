; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_link_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@pci_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_DIS\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_pci_link_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_link_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_pci_link_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @pci_link, align 4
  %9 = call i32 @ACPI_SERIAL_BEGIN(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.acpi_pci_link_softc* @device_get_softc(i32 %10)
  store %struct.acpi_pci_link_softc* %11, %struct.acpi_pci_link_softc** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %38 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @acpi_pci_link_route_irqs(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @acpi_get_handle(i32 %45)
  %47 = call i32 @AcpiEvaluateObject(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  %48 = load i32, i32* @AE_OK, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* @pci_link, align 4
  %51 = call i32 @ACPI_SERIAL_END(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local %struct.acpi_pci_link_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_pci_link_route_irqs(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, i32*) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
