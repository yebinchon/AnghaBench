; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci.c_acpi_pci_device_notify_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci.c_acpi_pci_device_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no device to eject for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to detach %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to eject %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unknown notify %#x for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @acpi_pci_device_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pci_device_notify_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %60 [
    i32 129, label %14
    i32 128, label %19
  ]

14:                                               ; preds = %3
  %15 = call i32 @mtx_lock(i32* @Giant)
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @BUS_RESCAN(i32* %16)
  %18 = call i32 @mtx_unlock(i32* @Giant)
  br label %66

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = call i32* @acpi_get_device(i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @acpi_name(i32 %26)
  %28 = call i32 (i32*, i8*, i32, ...) @device_printf(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %66

29:                                               ; preds = %19
  %30 = call i32 @mtx_lock(i32* @Giant)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @device_detach(i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = call i32 @mtx_unlock(i32* @Giant)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @device_get_nameunit(i32* %38)
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i32*, i8*, i32, ...) @device_printf(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  br label %66

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @acpi_SetInteger(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = call i32 @mtx_unlock(i32* @Giant)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @acpi_name(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @AcpiFormatException(i32 %53)
  %55 = call i32 (i32*, i8*, i32, ...) @device_printf(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %54)
  br label %66

56:                                               ; preds = %42
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @BUS_RESCAN(i32* %57)
  %59 = call i32 @mtx_unlock(i32* @Giant)
  br label %66

60:                                               ; preds = %3
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @acpi_name(i32 %63)
  %65 = call i32 (i32*, i8*, i32, ...) @device_printf(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %24, %35, %48, %60, %56, %14
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @BUS_RESCAN(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32* @acpi_get_device(i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32, ...) #1

declare dso_local i32 @acpi_name(i32) #1

declare dso_local i32 @device_detach(i32*) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @acpi_SetInteger(i32, i8*, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
