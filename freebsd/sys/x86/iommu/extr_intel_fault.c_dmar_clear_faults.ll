; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_fault.c_dmar_clear_faults.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_fault.c_dmar_clear_faults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@DMAR_FRCD2_F32 = common dso_local global i32 0, align 4
@DMAR_FSTS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*)* @dmar_clear_faults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_clear_faults(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %10 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DMAR_CAP_NFR(i32 %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %7
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %16 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DMAR_CAP_FRO(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  %21 = mul nsw i32 %20, 16
  store i32 %21, i32* %4, align 4
  %22 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 12
  %25 = call i32 @dmar_read4(%struct.dmar_unit* %22, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DMAR_FRCD2_F32, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %37

31:                                               ; preds = %14
  %32 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 12
  %35 = load i32, i32* @DMAR_FRCD2_F32, align 4
  %36 = call i32 @dmar_write4(%struct.dmar_unit* %32, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %30
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %42 = load i32, i32* @DMAR_FSTS_REG, align 4
  %43 = call i32 @dmar_read4(%struct.dmar_unit* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %45 = load i32, i32* @DMAR_FSTS_REG, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dmar_write4(%struct.dmar_unit* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @DMAR_CAP_NFR(i32) #1

declare dso_local i32 @DMAR_CAP_FRO(i32) #1

declare dso_local i32 @dmar_read4(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_write4(%struct.dmar_unit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
