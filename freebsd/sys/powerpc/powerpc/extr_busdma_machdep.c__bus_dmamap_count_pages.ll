; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c__bus_dmamap_count_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c__bus_dmamap_count_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

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
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %93

21:                                               ; preds = %6
  %22 = load i32, i32* @KTR_BUSDMA, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @Maxmem, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @ptoa(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CTR4(i32 %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load i32, i32* @KTR_BUSDMA, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @CTR2(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %37, i64 %40)
  %42 = load i8*, i8** %10, align 8
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* %13, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load i64, i64* %11, align 8
  %47 = add nsw i64 %45, %46
  store i64 %47, i64* %14, align 8
  br label %48

48:                                               ; preds = %83, %21
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @PAGE_MASK, align 8
  %56 = and i64 %54, %55
  %57 = sub nsw i64 %53, %56
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @kernel_pmap, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @pmap_kextract(i64 %62)
  store i32 %63, i32* %15, align 4
  br label %68

64:                                               ; preds = %52
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @pmap_extract(i64 %65, i64 %66)
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @run_filter(%struct.TYPE_8__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i64, i64* %16, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @roundup2(i64 %74, i32 %77)
  store i64 %78, i64* %16, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %73, %68
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %13, align 8
  br label %48

87:                                               ; preds = %48
  %88 = load i32, i32* @KTR_BUSDMA, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @CTR1(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %87, %6
  ret void
}

declare dso_local i32 @CTR4(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @pmap_extract(i64, i64) #1

declare dso_local i64 @run_filter(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @CTR1(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
