; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c__bus_dmamap_count_ma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c__bus_dmamap_count_ma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.vm_page = type { i32 }

@nobounce_dmamap = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"lowaddr= %d Maxmem= %d, boundary= %d, alignment= %d\00", align 1
@Maxmem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"map= %p, nobouncemap= %p, pagesneeded= %d\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Segment size is not aligned\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Segment length overruns original buffer\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"pagesneeded= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.vm_page**, i32, i32, i32)* @_bus_dmamap_count_ma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bus_dmamap_count_ma(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, %struct.vm_page** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.vm_page**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store %struct.vm_page** %2, %struct.vm_page*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, @nobounce_dmamap
  br i1 %18, label %19, label %132

19:                                               ; preds = %6
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %132

24:                                               ; preds = %19
  %25 = load i32, i32* @KTR_BUSDMA, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @Maxmem, align 8
  %31 = call i32 @ptoa(i64 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CTR4(i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %35, i32 %39)
  %41 = load i32, i32* @KTR_BUSDMA, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @CTR3(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %42, %struct.TYPE_9__* @nobounce_dmamap, i64 %45)
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %112, %24
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %126

50:                                               ; preds = %47
  %51 = load %struct.vm_page**, %struct.vm_page*** %9, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.vm_page*, %struct.vm_page** %51, i64 %53
  %55 = load %struct.vm_page*, %struct.vm_page** %54, align 8
  %56 = call i64 @VM_PAGE_TO_PHYS(%struct.vm_page* %55)
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  store i64 %59, i64* %16, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @MIN(i32 %63, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @MIN(i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %16, align 8
  %75 = call i64 @bus_dma_run_filter(%struct.TYPE_11__* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %50
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @roundup2(i32 %78, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @MIN(i32 %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %87, %92
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @KASSERT(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %77, %50
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* @PAGE_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %109, %101
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* @PAGE_MASK, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp sge i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @KASSERT(i32 %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %47

126:                                              ; preds = %47
  %127 = load i32, i32* @KTR_BUSDMA, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @CTR1(i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %126, %19, %6
  ret void
}

declare dso_local i32 @CTR4(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ptoa(i64) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.vm_page*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @bus_dma_run_filter(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CTR1(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
