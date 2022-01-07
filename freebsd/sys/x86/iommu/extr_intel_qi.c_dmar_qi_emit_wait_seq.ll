; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_emit_wait_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_emit_wait_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32 }
%struct.dmar_qi_genseq = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"wait descriptor with no place for seq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*, %struct.dmar_qi_genseq*, i32)* @dmar_qi_emit_wait_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_qi_emit_wait_seq(%struct.dmar_unit* %0, %struct.dmar_qi_genseq* %1, i32 %2) #0 {
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca %struct.dmar_qi_genseq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmar_qi_genseq, align 4
  %8 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %4, align 8
  store %struct.dmar_qi_genseq* %1, %struct.dmar_qi_genseq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dmar_qi_genseq*, %struct.dmar_qi_genseq** %5, align 8
  %10 = icmp ne %struct.dmar_qi_genseq* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %14 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %13)
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %16 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %50

19:                                               ; preds = %3
  %20 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %21 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.dmar_qi_genseq, %struct.dmar_qi_genseq* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %25 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dmar_qi_genseq, %struct.dmar_qi_genseq* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %29 = call i32 @dmar_qi_ensure(%struct.dmar_unit* %28, i32 1)
  %30 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %31 = getelementptr inbounds %struct.dmar_qi_genseq, %struct.dmar_qi_genseq* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dmar_qi_emit_wait_descr(%struct.dmar_unit* %30, i32 %32, i32 0, i32 1, i32 0)
  %34 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %35 = call i32 @dmar_qi_advance_tail(%struct.dmar_unit* %34)
  br label %36

36:                                               ; preds = %41, %19
  %37 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %38 = call i32 @dmar_qi_seq_processed(%struct.dmar_unit* %37, %struct.dmar_qi_genseq* %7)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (...) @cpu_spinwait()
  br label %36

43:                                               ; preds = %36
  %44 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %45 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %49 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %3
  %51 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %52 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %55 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %56 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dmar_qi_genseq*, %struct.dmar_qi_genseq** %5, align 8
  %59 = getelementptr inbounds %struct.dmar_qi_genseq, %struct.dmar_qi_genseq* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.dmar_qi_genseq*, %struct.dmar_qi_genseq** %5, align 8
  %62 = getelementptr inbounds %struct.dmar_qi_genseq, %struct.dmar_qi_genseq* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %50
  %66 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %67 = call i32 @dmar_qi_ensure(%struct.dmar_unit* %66, i32 1)
  %68 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @dmar_qi_emit_wait_descr(%struct.dmar_unit* %68, i32 %69, i32 1, i32 1, i32 0)
  br label %71

71:                                               ; preds = %65, %50
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_ensure(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_qi_emit_wait_descr(%struct.dmar_unit*, i32, i32, i32, i32) #1

declare dso_local i32 @dmar_qi_advance_tail(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_seq_processed(%struct.dmar_unit*, %struct.dmar_qi_genseq*) #1

declare dso_local i32 @cpu_spinwait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
