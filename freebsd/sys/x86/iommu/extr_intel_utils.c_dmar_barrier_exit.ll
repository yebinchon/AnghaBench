; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_barrier_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_barrier_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32 }

@BARRIER_F = common dso_local global i32 0, align 4
@f_done = common dso_local global i32 0, align 4
@f_inproc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dmar%d barrier %d missed entry\00", align 1
@f_wakeup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_barrier_exit(%struct.dmar_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @BARRIER_F, align 4
  %6 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %7 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %6)
  %8 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %9 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @f_done, align 4
  %12 = load i32, i32* @f_inproc, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @f_inproc, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %17, i8* %23)
  %25 = load i32, i32* @f_done, align 4
  %26 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %27 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %31 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @f_wakeup, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %38 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %37, i32 0, i32 0
  %39 = call i32 @wakeup(i32* %38)
  br label %40

40:                                               ; preds = %36, %2
  %41 = load i32, i32* @f_inproc, align 4
  %42 = load i32, i32* @f_wakeup, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %46 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %50 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %49)
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
