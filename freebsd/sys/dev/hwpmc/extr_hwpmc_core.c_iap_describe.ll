; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_core.c_iap_describe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_core.c_iap_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pmc_hw* }
%struct.pmc_hw = type { i32, %struct.pmc* }
%struct.pmc = type { i32 }
%struct.pmc_info = type { i32, i32, i32 }

@PMC_NAME_MAX = common dso_local global i32 0, align 4
@core_pcpu = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"IAP-%d\00", align 1
@PMC_CLASS_IAP = common dso_local global i32 0, align 4
@PMC_PHW_FLAG_IS_ENABLED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.pmc_info*, %struct.pmc**)* @iap_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iap_describe(i32 %0, i32 %1, %struct.pmc_info* %2, %struct.pmc** %3) #0 {
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
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @core_pcpu, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.pmc_hw*, %struct.pmc_hw** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %25, i64 %27
  store %struct.pmc_hw* %28, %struct.pmc_hw** %11, align 8
  %29 = trunc i64 %16 to i32
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @snprintf(i8* %18, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.pmc_info*, %struct.pmc_info** %8, align 8
  %33 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PMC_NAME_MAX, align 4
  %36 = call i32 @copystr(i8* %18, i32 %34, i32 %35, i32* null)
  store i32 %36, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %64

40:                                               ; preds = %4
  %41 = load i32, i32* @PMC_CLASS_IAP, align 4
  %42 = load %struct.pmc_info*, %struct.pmc_info** %8, align 8
  %43 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pmc_hw*, %struct.pmc_hw** %11, align 8
  %45 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PMC_PHW_FLAG_IS_ENABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load i32, i32* @TRUE, align 4
  %52 = load %struct.pmc_info*, %struct.pmc_info** %8, align 8
  %53 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pmc_hw*, %struct.pmc_hw** %11, align 8
  %55 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %54, i32 0, i32 1
  %56 = load %struct.pmc*, %struct.pmc** %55, align 8
  %57 = load %struct.pmc**, %struct.pmc*** %9, align 8
  store %struct.pmc* %56, %struct.pmc** %57, align 8
  br label %63

58:                                               ; preds = %40
  %59 = load i32, i32* @FALSE, align 4
  %60 = load %struct.pmc_info*, %struct.pmc_info** %8, align 8
  %61 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pmc**, %struct.pmc*** %9, align 8
  store %struct.pmc* null, %struct.pmc** %62, align 8
  br label %63

63:                                               ; preds = %58, %50
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
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
