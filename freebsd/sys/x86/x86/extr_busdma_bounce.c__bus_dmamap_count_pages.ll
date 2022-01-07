; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c__bus_dmamap_count_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c__bus_dmamap_count_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@nobounce_dmamap = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"lowaddr= %d Maxmem= %d, boundary= %d, alignment= %d\00", align 1
@Maxmem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"map= %p, nobouncemap= %p, pagesneeded= %d\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"pagesneeded= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i64, i8*, i64, i32)* @_bus_dmamap_count_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bus_dmamap_count_pages(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, @nobounce_dmamap
  br i1 %18, label %19, label %101

19:                                               ; preds = %6
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %101

24:                                               ; preds = %19
  %25 = load i32, i32* @KTR_BUSDMA, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @Maxmem, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ptoa(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CTR4(i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %36, i32 %40)
  %42 = load i32, i32* @KTR_BUSDMA, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @CTR3(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %43, %struct.TYPE_9__* @nobounce_dmamap, i64 %46)
  %48 = load i8*, i8** %10, align 8
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %13, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %51, %52
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %91, %24
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %54
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @PAGE_MASK, align 8
  %62 = and i64 %60, %61
  %63 = sub nsw i64 %59, %62
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @kernel_pmap, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @pmap_kextract(i64 %68)
  store i32 %69, i32* %15, align 4
  br label %74

70:                                               ; preds = %58
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @pmap_extract(i64 %71, i64 %72)
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %15, align 4
  %78 = call i64 @bus_dma_run_filter(%struct.TYPE_11__* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load i64, i64* %16, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @roundup2(i64 %81, i32 %85)
  store i64 %86, i64* %16, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %80, %74
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %13, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %13, align 8
  br label %54

95:                                               ; preds = %54
  %96 = load i32, i32* @KTR_BUSDMA, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @CTR1(i32 %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %95, %19, %6
  ret void
}

declare dso_local i32 @CTR4(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @pmap_extract(i64, i64) #1

declare dso_local i64 @bus_dma_run_filter(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @CTR1(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
