; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_uncore.c_ucf_describe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_uncore.c_ucf_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pmc_hw* }
%struct.pmc_hw = type { i32, %struct.pmc* }
%struct.pmc = type { i32 }
%struct.pmc_info = type { i32, i32, i32 }

@PMC_NAME_MAX = common dso_local global i32 0, align 4
@uncore_pcpu = common dso_local global %struct.TYPE_2__** null, align 8
@uncore_ucf_ri = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"UCF-%d\00", align 1
@PMC_CLASS_UCF = common dso_local global i32 0, align 4
@PMC_PHW_FLAG_IS_ENABLED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.pmc_info*, %struct.pmc**)* @ucf_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucf_describe(i32 %0, i32 %1, %struct.pmc_info* %2, %struct.pmc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmc_info*, align 8
  %9 = alloca %struct.pmc**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pmc_hw*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pmc_info* %2, %struct.pmc_info** %8, align 8
  store %struct.pmc** %3, %struct.pmc*** %9, align 8
  %15 = load i32, i32* @PMC_NAME_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @uncore_pcpu, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.pmc_hw*, %struct.pmc_hw** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @uncore_ucf_ri, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %25, i64 %29
  store %struct.pmc_hw* %30, %struct.pmc_hw** %11, align 8
  %31 = trunc i64 %16 to i32
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @snprintf(i8* %18, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.pmc_info*, %struct.pmc_info** %8, align 8
  %35 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PMC_NAME_MAX, align 4
  %38 = call i32 @copystr(i8* %18, i32 %36, i32 %37, i32* null)
  store i32 %38, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %66

42:                                               ; preds = %4
  %43 = load i32, i32* @PMC_CLASS_UCF, align 4
  %44 = load %struct.pmc_info*, %struct.pmc_info** %8, align 8
  %45 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pmc_hw*, %struct.pmc_hw** %11, align 8
  %47 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PMC_PHW_FLAG_IS_ENABLED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load i32, i32* @TRUE, align 4
  %54 = load %struct.pmc_info*, %struct.pmc_info** %8, align 8
  %55 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pmc_hw*, %struct.pmc_hw** %11, align 8
  %57 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %56, i32 0, i32 1
  %58 = load %struct.pmc*, %struct.pmc** %57, align 8
  %59 = load %struct.pmc**, %struct.pmc*** %9, align 8
  store %struct.pmc* %58, %struct.pmc** %59, align 8
  br label %65

60:                                               ; preds = %42
  %61 = load i32, i32* @FALSE, align 4
  %62 = load %struct.pmc_info*, %struct.pmc_info** %8, align 8
  %63 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.pmc**, %struct.pmc*** %9, align 8
  store %struct.pmc* null, %struct.pmc** %64, align 8
  br label %65

65:                                               ; preds = %60, %52
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @copystr(i8*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
