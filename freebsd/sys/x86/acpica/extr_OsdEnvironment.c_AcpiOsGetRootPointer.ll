; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_OsdEnvironment.c_AcpiOsGetRootPointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_OsdEnvironment.c_AcpiOsGetRootPointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_root_phys = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiOsGetRootPointer() #0 {
  %1 = load i64, i64* @acpi_root_phys, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = call i64 (...) @acpi_get_root_from_loader()
  store i64 %4, i64* @acpi_root_phys, align 8
  %5 = load i64, i64* @acpi_root_phys, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i64 (...) @acpi_get_root_from_memory()
  store i64 %8, i64* @acpi_root_phys, align 8
  br label %9

9:                                                ; preds = %7, %3
  br label %10

10:                                               ; preds = %9, %0
  %11 = load i64, i64* @acpi_root_phys, align 8
  ret i64 %11
}

declare dso_local i64 @acpi_get_root_from_loader(...) #1

declare dso_local i64 @acpi_get_root_from_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
