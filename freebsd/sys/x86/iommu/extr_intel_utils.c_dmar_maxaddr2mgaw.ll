; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_maxaddr2mgaw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_maxaddr2mgaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.dmar_unit = type { i32 }

@sagaw_bits = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"no mgaw for maxaddr %jx allow_less %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_maxaddr2mgaw(%struct.dmar_unit* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_unit*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sagaw_bits, align 8
  %12 = call i32 @nitems(%struct.TYPE_3__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sagaw_bits, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = shl i64 1, %20
  %22 = load i64, i64* %6, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %26 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DMAR_CAP_SAGAW(i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sagaw_bits, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %28, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %42

38:                                               ; preds = %24, %14
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %9

42:                                               ; preds = %37, %9
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sagaw_bits, align 8
  %48 = call i32 @nitems(%struct.TYPE_3__* %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %54, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %56 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DMAR_CAP_SAGAW(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sagaw_bits, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %58, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %51, label %67

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %45, %42
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sagaw_bits, align 8
  %71 = call i32 @nitems(%struct.TYPE_3__* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sagaw_bits, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %88

81:                                               ; preds = %68
  %82 = load i64, i64* %6, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @KASSERT(i32 0, i8* %86)
  store i32 -1, i32* %4, align 4
  br label %88

88:                                               ; preds = %81, %73
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @DMAR_CAP_SAGAW(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
