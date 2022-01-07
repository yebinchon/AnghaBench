; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_acpi.c_sdhci_acpi_find_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_acpi.c_sdhci_acpi_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_acpi_device = type { i32, i32* }

@sdhci_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@sdhci_acpi_devices = common dso_local global %struct.sdhci_acpi_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdhci_acpi_device* (i32)* @sdhci_acpi_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdhci_acpi_device* @sdhci_acpi_find_device(i32 %0) #0 {
  %2 = alloca %struct.sdhci_acpi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @sdhci_ids, align 4
  %14 = call i32 @ACPI_ID_PROBE(i32 %11, i32 %12, i32 %13, i8** %4)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.sdhci_acpi_device* null, %struct.sdhci_acpi_device** %2, align 8
  br label %74

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @acpi_get_handle(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @acpi_GetInteger(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %18
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %70, %27
  %29 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** @sdhci_acpi_devices, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %29, i64 %31
  %33 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %73

36:                                               ; preds = %28
  %37 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** @sdhci_acpi_devices, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %37, i64 %39
  %41 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @strcmp(i32* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %70

47:                                               ; preds = %36
  %48 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** @sdhci_acpi_devices, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %48, i64 %50
  %52 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** @sdhci_acpi_devices, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %56, i64 %58
  %60 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %70

65:                                               ; preds = %55, %47
  %66 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** @sdhci_acpi_devices, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %66, i64 %68
  store %struct.sdhci_acpi_device* %69, %struct.sdhci_acpi_device** %2, align 8
  br label %74

70:                                               ; preds = %64, %46
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %28

73:                                               ; preds = %28
  store %struct.sdhci_acpi_device* null, %struct.sdhci_acpi_device** %2, align 8
  br label %74

74:                                               ; preds = %73, %65, %17
  %75 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** %2, align 8
  ret %struct.sdhci_acpi_device* %75
}

declare dso_local i32 @ACPI_ID_PROBE(i32, i32, i32, i8**) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
