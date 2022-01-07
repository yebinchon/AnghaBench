; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_lookup_irq_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_lookup_irq_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.lookup_irq_request = type { i32, i64, i32, i64, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@acpi_lookup_irq_handler = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_lookup_irq_resource(i32 %0, i32 %1, %struct.resource* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.lookup_irq_request, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.resource* %2, %struct.resource** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %9, i32 0, i32 5
  store i32* %11, i32** %12, align 8
  %13 = load %struct.resource*, %struct.resource** %7, align 8
  %14 = call i32 @rman_get_start(%struct.resource* %13)
  %15 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %9, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %9, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %9, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %9, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @acpi_get_handle(i32 %21)
  %23 = load i32, i32* @acpi_lookup_irq_handler, align 4
  %24 = call i32 @AcpiWalkResources(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.lookup_irq_request* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @ACPI_SUCCESS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %9, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %28, %4
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @AcpiWalkResources(i32, i8*, i32, %struct.lookup_irq_request*) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
