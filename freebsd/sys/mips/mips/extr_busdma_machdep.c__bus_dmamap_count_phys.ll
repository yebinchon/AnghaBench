; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__bus_dmamap_count_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__bus_dmamap_count_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"lowaddr= %d, boundary= %d, alignment= %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"map= %p, pagesneeded= %d\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"pagesneeded= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i64, i32)* @_bus_dmamap_count_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bus_dmamap_count_phys(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %5
  %18 = load i32, i32* @KTR_BUSDMA, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CTR3(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27)
  %29 = load i32, i32* @KTR_BUSDMA, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @CTR2(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %30, i64 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %57, %17
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @MIN(i64 %40, i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @run_filter(%struct.TYPE_8__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i64 @MIN(i64 %50, i32 %51)
  store i64 %52, i64* %12, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %49, %39
  %58 = load i64, i64* %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %36

66:                                               ; preds = %36
  %67 = load i32, i32* @KTR_BUSDMA, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @CTR1(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %66, %5
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.TYPE_7__*, i64) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @run_filter(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @CTR1(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
