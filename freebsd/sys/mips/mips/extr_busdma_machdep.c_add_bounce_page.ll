; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c_add_bounce_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c_add_bounce_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.bounce_zone* }
%struct.bounce_zone = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.bounce_page = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"no bounce zone in dma tag\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"add_bounce_page: bad map %p\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"add_bounce_page: map doesn't need any pages\00", align 1
@bounce_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"add_bounce_page: free page list is empty\00", align 1
@links = common dso_local global i32 0, align 4
@BUS_DMA_KEEP_PG_OFFSET = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32)* @add_bounce_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bounce_page(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bounce_zone*, align 8
  %12 = alloca %struct.bounce_page*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.bounce_zone*, %struct.bounce_zone** %14, align 8
  %16 = icmp ne %struct.bounce_zone* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  %21 = zext i1 %20 to i32
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = bitcast %struct.TYPE_5__* %22 to i8*
  %24 = call i32 @KASSERT(i32 %21, i8* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.bounce_zone*, %struct.bounce_zone** %26, align 8
  store %struct.bounce_zone* %27, %struct.bounce_zone** %11, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %5
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %34
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = call i32 @mtx_lock(i32* @bounce_lock)
  %51 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %52 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %51, i32 0, i32 2
  %53 = call %struct.bounce_page* @STAILQ_FIRST(i32* %52)
  store %struct.bounce_page* %53, %struct.bounce_page** %12, align 8
  %54 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %55 = icmp eq %struct.bounce_page* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %45
  %59 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %60 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %59, i32 0, i32 2
  %61 = load i32, i32* @links, align 4
  %62 = call i32 @STAILQ_REMOVE_HEAD(i32* %60, i32 %61)
  %63 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %64 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %68 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = call i32 @mtx_unlock(i32* @bounce_lock)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BUS_DMA_KEEP_PG_OFFSET, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %58
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @PAGE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %83 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @PAGE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %90 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %78, %58
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %96 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %99 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %102 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %106 = load i32, i32* @links, align 4
  %107 = call i32 @STAILQ_INSERT_TAIL(i32* %104, %struct.bounce_page* %105, i32 %106)
  %108 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %109 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  ret i32 %110
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bounce_page* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bounce_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
