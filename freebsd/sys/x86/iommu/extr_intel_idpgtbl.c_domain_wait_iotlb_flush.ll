; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_wait_iotlb_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_wait_iotlb_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@DMAR_IOTLB_REG_OFF = common dso_local global i64 0, align 8
@DMAR_IOTLB_IVT = common dso_local global i32 0, align 4
@DMAR_IOTLB_DR = common dso_local global i32 0, align 4
@DMAR_IOTLB_DW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_unit*, i32, i32)* @domain_wait_iotlb_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_wait_iotlb_flush(%struct.dmar_unit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @DMAR_IOTLB_REG_OFF, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @DMAR_IOTLB_IVT, align 4
  %14 = load i32, i32* @DMAR_IOTLB_DR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DMAR_IOTLB_DW, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @dmar_write8(%struct.dmar_unit* %8, i64 %12, i32 %19)
  br label %21

21:                                               ; preds = %33, %3
  %22 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @DMAR_IOTLB_REG_OFF, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @dmar_read8(%struct.dmar_unit* %22, i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @DMAR_IOTLB_IVT, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %35

33:                                               ; preds = %21
  %34 = call i32 (...) @cpu_spinwait()
  br label %21

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @dmar_write8(%struct.dmar_unit*, i64, i32) #1

declare dso_local i32 @dmar_read8(%struct.dmar_unit*, i64) #1

declare dso_local i32 @cpu_spinwait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
