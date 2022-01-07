; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_barrier_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_barrier_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i32 }

@BARRIER_F = common dso_local global i32 0, align 4
@f_done = common dso_local global i32 0, align 4
@f_inproc = common dso_local global i32 0, align 4
@f_wakeup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dmarb\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"dmar%d barrier %d missing done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_barrier_enter(%struct.dmar_unit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @BARRIER_F, align 4
  %7 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %8 = call i32 @DMAR_LOCK(%struct.dmar_unit* %7)
  %9 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %10 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @f_done, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %17 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %16)
  store i32 0, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %20 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @f_inproc, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %33, %25
  %27 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %28 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @f_inproc, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i32, i32* @f_wakeup, align 4
  %35 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %36 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %40 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %39, i32 0, i32 0
  %41 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %42 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %41, i32 0, i32 2
  %43 = call i32 @msleep(i32* %40, i32* %42, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %46 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @f_done, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %53 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @KASSERT(i32 %51, i8* %57)
  %59 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %60 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %59)
  store i32 0, i32* %3, align 4
  br label %69

61:                                               ; preds = %18
  %62 = load i32, i32* @f_inproc, align 4
  %63 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %64 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %68 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %67)
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %61, %44, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
