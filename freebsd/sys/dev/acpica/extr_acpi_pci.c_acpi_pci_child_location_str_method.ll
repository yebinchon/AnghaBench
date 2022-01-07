; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci.c_acpi_pci_child_location_str_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci.c_acpi_pci_child_location_str_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_devinfo = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c" handle=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_PXM\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" _PXM=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64)* @acpi_pci_child_location_str_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_child_location_str_method(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_pci_devinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.acpi_pci_devinfo* @device_get_ivars(i32 %12)
  store %struct.acpi_pci_devinfo* %13, %struct.acpi_pci_devinfo** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @pci_child_location_str_method(i32 %14, i32 %15, i8* %16, i64 %17)
  %19 = load %struct.acpi_pci_devinfo*, %struct.acpi_pci_devinfo** %9, align 8
  %20 = getelementptr inbounds %struct.acpi_pci_devinfo, %struct.acpi_pci_devinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @strlcat(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.acpi_pci_devinfo*, %struct.acpi_pci_devinfo** %9, align 8
  %29 = getelementptr inbounds %struct.acpi_pci_devinfo, %struct.acpi_pci_devinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @acpi_name(i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @strlcat(i8* %27, i8* %31, i64 %32)
  %34 = load %struct.acpi_pci_devinfo*, %struct.acpi_pci_devinfo** %9, align 8
  %35 = getelementptr inbounds %struct.acpi_pci_devinfo, %struct.acpi_pci_devinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @acpi_GetInteger(i64 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %38 = call i64 @ACPI_SUCCESS(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %23
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @snprintf(i8* %41, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @strlcat(i8* %44, i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %40, %23
  br label %49

49:                                               ; preds = %48, %4
  ret i32 0
}

declare dso_local %struct.acpi_pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_child_location_str_method(i32, i32, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i8* @acpi_name(i64) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_GetInteger(i64, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
