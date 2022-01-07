; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"pci_link\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@pci_link_ids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ACPI PCI Link %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ACPI PCI Link\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_pci_link_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_link_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [28 x i8], align 16
  %5 = alloca [12 x i8], align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i64 @acpi_disabled(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @pci_link_ids, align 4
  %16 = call i32 @ACPI_ID_PROBE(i32 %13, i32 %14, i32 %15, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @acpi_get_handle(i32 %22)
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %25 = call i32 @acpi_short_name(i32 %23, i8* %24, i32 12)
  %26 = call i64 @ACPI_SUCCESS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = getelementptr inbounds [28 x i8], [28 x i8]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %31 = call i32 @snprintf(i8* %29, i32 28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %3, align 4
  %33 = getelementptr inbounds [28 x i8], [28 x i8]* %4, i64 0, i64 0
  %34 = call i32 @device_set_desc_copy(i32 %32, i8* %33)
  br label %38

35:                                               ; preds = %21
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_set_desc(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_quiet(i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %19, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i32 @ACPI_ID_PROBE(i32, i32, i32, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_short_name(i32, i8*, i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @device_quiet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
