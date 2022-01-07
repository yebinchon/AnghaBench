; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_emit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i64 }

@DMAR_IQ_DESCR_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tail overflow 0x%x 0x%jx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*, i32, i32)* @dmar_qi_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_qi_emit(%struct.dmar_unit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %8 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %11 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %14 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %12, %16
  %18 = inttoptr i64 %17 to i32*
  store volatile i32 %9, i32* %18, align 4
  %19 = load i32, i32* @DMAR_IQ_DESCR_SZ, align 4
  %20 = sdiv i32 %19, 2
  %21 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %22 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %26 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %29 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %34 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %37 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %32, i8* %40)
  %42 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %43 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %47 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %52 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %55 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = inttoptr i64 %58 to i32*
  store volatile i32 %50, i32* %59, align 4
  %60 = load i32, i32* @DMAR_IQ_DESCR_SZ, align 4
  %61 = sdiv i32 %60, 2
  %62 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %63 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %67 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %70 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %68, %71
  %73 = zext i1 %72 to i32
  %74 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %75 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %78 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @KASSERT(i32 %73, i8* %81)
  %83 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %84 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %88 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
