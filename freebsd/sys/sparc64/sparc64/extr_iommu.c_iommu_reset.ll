; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_state = type { i64, i32, i64, i64, i64* }

@IOMMU_FIRE = common dso_local global i32 0, align 4
@is_iommu = common dso_local global i32 0, align 4
@IMR_CACHE_INVAL = common dso_local global i32 0, align 4
@IMR_TSB = common dso_local global i32 0, align 4
@IMR_CTL = common dso_local global i32 0, align 4
@is_sb = common dso_local global i32* null, align 8
@ISR_CTL = common dso_local global i32 0, align 4
@STRBUF_EN = common dso_local global i64 0, align 8
@IOMMU_RERUN_DISABLE = common dso_local global i32 0, align 4
@STRBUF_RR_DIS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_reset(%struct.iommu_state* %0) #0 {
  %2 = alloca %struct.iommu_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.iommu_state* %0, %struct.iommu_state** %2, align 8
  %5 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %6 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %9 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IOMMU_FIRE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %16 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %21 = load i32, i32* @is_iommu, align 4
  %22 = load i32, i32* @IMR_CACHE_INVAL, align 4
  %23 = call i32 @IOMMU_WRITE8(%struct.iommu_state* %20, i32 %21, i32 %22, i64 -1)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %26 = load i32, i32* @is_iommu, align 4
  %27 = load i32, i32* @IMR_TSB, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @IOMMU_WRITE8(%struct.iommu_state* %25, i32 %26, i32 %27, i64 %28)
  %30 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %31 = load i32, i32* @is_iommu, align 4
  %32 = load i32, i32* @IMR_CTL, align 4
  %33 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %34 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @IOMMU_WRITE8(%struct.iommu_state* %30, i32 %31, i32 %32, i64 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %91, %24
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %94

40:                                               ; preds = %37
  %41 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %42 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %41, i32 0, i32 4
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %40
  %50 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %51 = load i32*, i32** @is_sb, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ISR_CTL, align 4
  %57 = load i64, i64* @STRBUF_EN, align 8
  %58 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %59 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IOMMU_RERUN_DISABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i64, i64* @STRBUF_RR_DIS, align 8
  br label %67

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i64 [ %65, %64 ], [ 0, %66 ]
  %69 = or i64 %57, %68
  %70 = call i32 @IOMMU_WRITE8(%struct.iommu_state* %50, i32 %55, i32 %56, i64 %69)
  %71 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %72 = load i32*, i32** @is_sb, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ISR_CTL, align 4
  %78 = call i64 @IOMMU_READ8(%struct.iommu_state* %71, i32 %76, i32 %77)
  %79 = load i64, i64* @STRBUF_EN, align 8
  %80 = and i64 %78, %79
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %67
  %83 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %84 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %83, i32 0, i32 4
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %82, %67
  br label %90

90:                                               ; preds = %89, %40
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %37

94:                                               ; preds = %37
  %95 = load %struct.iommu_state*, %struct.iommu_state** %2, align 8
  %96 = load i32, i32* @is_iommu, align 4
  %97 = load i32, i32* @IMR_CTL, align 4
  %98 = call i64 @IOMMU_READ8(%struct.iommu_state* %95, i32 %96, i32 %97)
  ret void
}

declare dso_local i32 @IOMMU_WRITE8(%struct.iommu_state*, i32, i32, i64) #1

declare dso_local i64 @IOMMU_READ8(%struct.iommu_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
