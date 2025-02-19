; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_acpi.c_acpi_get_rsdp.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_acpi.c_acpi_get_rsdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ACPIrsdp = type { i64, i64, i32 }

@acpi_mem_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"RSD PTR \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ACPIrsdp* (i32)* @acpi_get_rsdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ACPIrsdp* @acpi_get_rsdp(i32 %0) #0 {
  %2 = alloca %struct.ACPIrsdp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ACPIrsdp, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @acpi_mem_fd, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pread(i32 %6, %struct.ACPIrsdp* %4, i32 8, i32 %7)
  %9 = getelementptr inbounds %struct.ACPIrsdp, %struct.ACPIrsdp* %4, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @memcmp(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.ACPIrsdp* null, %struct.ACPIrsdp** %2, align 8
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* @acpi_mem_fd, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pread(i32 %15, %struct.ACPIrsdp* %4, i32 24, i32 %16)
  %18 = call i64 @acpi_checksum(%struct.ACPIrsdp* %4, i32 20)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store %struct.ACPIrsdp* null, %struct.ACPIrsdp** %2, align 8
  br label %33

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ACPIrsdp, %struct.ACPIrsdp* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 20, i64* %5, align 8
  br label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ACPIrsdp, %struct.ACPIrsdp* %4, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* %3, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call %struct.ACPIrsdp* @acpi_map_physical(i32 %30, i64 %31)
  store %struct.ACPIrsdp* %32, %struct.ACPIrsdp** %2, align 8
  br label %33

33:                                               ; preds = %29, %20, %13
  %34 = load %struct.ACPIrsdp*, %struct.ACPIrsdp** %2, align 8
  ret %struct.ACPIrsdp* %34
}

declare dso_local i32 @pread(i32, %struct.ACPIrsdp*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @acpi_checksum(%struct.ACPIrsdp*, i32) #1

declare dso_local %struct.ACPIrsdp* @acpi_map_physical(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
