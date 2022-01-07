; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_remap_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_remap_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { %struct.dmar_msi_data* }
%struct.dmar_msi_data = type { i64, i32 (%struct.dmar_unit*)*, i32, i32, i32, i32 (%struct.dmar_unit*)* }

@DMAR_INTR_TOTAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @dmar_remap_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_remap_intr(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dmar_unit*, align 8
  %9 = alloca %struct.dmar_msi_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.dmar_unit* @device_get_softc(i32 %14)
  store %struct.dmar_unit* %15, %struct.dmar_unit** %8, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %78, %3
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @DMAR_INTR_TOTAL, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %81

20:                                               ; preds = %16
  %21 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %22 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %21, i32 0, i32 0
  %23 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %23, i64 %25
  store %struct.dmar_msi_data* %26, %struct.dmar_msi_data** %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %29 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @device_get_parent(i32 %33)
  %35 = call i32 @device_get_parent(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @PCIB_MAP_MSI(i32 %35, i32 %36, i64 %37, i32* %10, i32* %11)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %4, align 4
  br label %83

43:                                               ; preds = %32
  %44 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %45 = call i32 @DMAR_LOCK(%struct.dmar_unit* %44)
  %46 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %47 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %46, i32 0, i32 5
  %48 = load i32 (%struct.dmar_unit*)*, i32 (%struct.dmar_unit*)** %47, align 8
  %49 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %50 = call i32 %48(%struct.dmar_unit* %49)
  %51 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %52 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %53 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @dmar_write4(%struct.dmar_unit* %51, i32 %54, i32 %55)
  %57 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %58 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %59 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @dmar_write4(%struct.dmar_unit* %57, i32 %60, i32 %61)
  %63 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %64 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %65 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = ashr i32 %67, 32
  %69 = call i32 @dmar_write4(%struct.dmar_unit* %63, i32 %66, i32 %68)
  %70 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %71 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %70, i32 0, i32 1
  %72 = load i32 (%struct.dmar_unit*)*, i32 (%struct.dmar_unit*)** %71, align 8
  %73 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %74 = call i32 %72(%struct.dmar_unit* %73)
  %75 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %76 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %75)
  store i32 0, i32* %4, align 4
  br label %83

77:                                               ; preds = %20
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %16

81:                                               ; preds = %16
  %82 = load i32, i32* @ENOENT, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %43, %41
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.dmar_unit* @device_get_softc(i32) #1

declare dso_local i32 @PCIB_MAP_MSI(i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_write4(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
