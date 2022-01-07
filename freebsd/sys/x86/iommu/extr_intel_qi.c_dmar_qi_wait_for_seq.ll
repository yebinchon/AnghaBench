; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_wait_for_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_wait_for_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32 }
%struct.dmar_qi_genseq = type { i32 }

@cold = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"dmarse\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*, %struct.dmar_qi_genseq*, i32)* @dmar_qi_wait_for_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_qi_wait_for_seq(%struct.dmar_unit* %0, %struct.dmar_qi_genseq* %1, i32 %2) #0 {
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca %struct.dmar_qi_genseq*, align 8
  %6 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %4, align 8
  store %struct.dmar_qi_genseq* %1, %struct.dmar_qi_genseq** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %8 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %7)
  %9 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %10 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %34, %3
  %14 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %15 = load %struct.dmar_qi_genseq*, %struct.dmar_qi_genseq** %5, align 8
  %16 = call i32 @dmar_qi_seq_processed(%struct.dmar_unit* %14, %struct.dmar_qi_genseq* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load i64, i64* @cold, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19
  %26 = call i32 (...) @cpu_spinwait()
  br label %34

27:                                               ; preds = %22
  %28 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %29 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %28, i32 0, i32 0
  %30 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %31 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %30, i32 0, i32 1
  %32 = load i32, i32* @hz, align 4
  %33 = call i32 @msleep(i32* %29, i32* %31, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %25
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %37 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_seq_processed(%struct.dmar_unit*, %struct.dmar_qi_genseq*) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
