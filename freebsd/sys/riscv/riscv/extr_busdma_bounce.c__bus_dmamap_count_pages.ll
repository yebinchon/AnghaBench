; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_busdma_bounce.c__bus_dmamap_count_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_busdma_bounce.c__bus_dmamap_count_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@DMAMAP_COULD_BOUNCE = common dso_local global i32 0, align 4
@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"lowaddr= %d Maxmem= %d, boundary= %d, alignment= %d\00", align 1
@Maxmem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"map= %p, pagesneeded= %d\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"pagesneeded= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i64, i8*, i64, i32)* @_bus_dmamap_count_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bus_dmamap_count_pages(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DMAMAP_COULD_BOUNCE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %105

23:                                               ; preds = %6
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %23
  %29 = load i32, i32* @KTR_BUSDMA, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @Maxmem, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @ptoa(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CTR4(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %40, i32 %44)
  %46 = load i32, i32* @KTR_BUSDMA, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @CTR2(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %47, i64 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* %13, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %14, align 8
  br label %58

58:                                               ; preds = %95, %28
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @PAGE_MASK, align 8
  %66 = and i64 %64, %65
  %67 = sub nsw i64 %63, %66
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @kernel_pmap, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @pmap_kextract(i64 %72)
  store i32 %73, i32* %15, align 4
  br label %78

74:                                               ; preds = %62
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @pmap_extract(i64 %75, i64 %76)
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %15, align 4
  %82 = call i64 @bus_dma_run_filter(%struct.TYPE_9__* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load i64, i64* %16, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @roundup2(i64 %85, i32 %89)
  store i64 %90, i64* %16, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %84, %78
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* %13, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %13, align 8
  br label %58

99:                                               ; preds = %58
  %100 = load i32, i32* @KTR_BUSDMA, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @CTR1(i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %99, %23, %6
  ret void
}

declare dso_local i32 @CTR4(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @pmap_extract(i64, i64) #1

declare dso_local i64 @bus_dma_run_filter(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @CTR1(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
