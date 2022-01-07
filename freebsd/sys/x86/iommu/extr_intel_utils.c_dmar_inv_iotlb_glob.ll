; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_inv_iotlb_glob.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_inv_iotlb_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"QI enabled\00", align 1
@DMAR_IOTLB_REG_OFF = common dso_local global i64 0, align 8
@DMAR_IOTLB_IVT = common dso_local global i32 0, align 4
@DMAR_IOTLB_IIRG_GLB = common dso_local global i32 0, align 4
@DMAR_IOTLB_DR = common dso_local global i32 0, align 4
@DMAR_IOTLB_DW = common dso_local global i32 0, align 4
@DMAR_IOTLB_IVT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_inv_iotlb_glob(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %5 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %6 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %5)
  %7 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %8 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %15 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DMAR_ECAP_IRO(i32 %16)
  %18 = mul nsw i32 16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @DMAR_IOTLB_REG_OFF, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @DMAR_IOTLB_IVT, align 4
  %25 = load i32, i32* @DMAR_IOTLB_IIRG_GLB, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DMAR_IOTLB_DR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DMAR_IOTLB_DW, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @dmar_write8(%struct.dmar_unit* %19, i64 %23, i32 %30)
  %32 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @DMAR_IOTLB_REG_OFF, align 8
  %36 = add nsw i64 %34, %35
  %37 = add nsw i64 %36, 4
  %38 = call i32 @dmar_read4(%struct.dmar_unit* %32, i64 %37)
  %39 = load i32, i32* @DMAR_IOTLB_IVT32, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @DMAR_WAIT_UNTIL(i32 %42)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_ECAP_IRO(i32) #1

declare dso_local i32 @dmar_write8(%struct.dmar_unit*, i64, i32) #1

declare dso_local i32 @DMAR_WAIT_UNTIL(i32) #1

declare dso_local i32 @dmar_read4(%struct.dmar_unit*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
