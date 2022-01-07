; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__bus_dmamap_count_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__bus_dmamap_count_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"lowaddr= %d, boundary= %d, alignment= %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"map= %p, pagesneeded= %d\00", align 1
@kernel_pmap = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"pmap is not kernel pmap\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"pagesneeded= %d\0A\00", align 1
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
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %93

21:                                               ; preds = %6
  %22 = load i32, i32* @KTR_BUSDMA, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CTR3(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  %33 = load i32, i32* @KTR_BUSDMA, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @CTR2(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %34, i64 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %13, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %42, %43
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %83, %21
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load i64, i64* @kernel_pmap, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @KASSERT(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @PAGE_MASK, align 8
  %58 = and i64 %56, %57
  %59 = sub nsw i64 %55, %58
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @pmap_kextract(i64 %60)
  store i32 %61, i32* %15, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %49
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @run_filter(%struct.TYPE_8__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i64, i64* %16, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @roundup2(i64 %74, i32 %77)
  store i64 %78, i64* %16, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %73, %68, %49
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %13, align 8
  br label %45

87:                                               ; preds = %45
  %88 = load i32, i32* @KTR_BUSDMA, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @CTR1(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %87, %6
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i64 @run_filter(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @CTR1(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
