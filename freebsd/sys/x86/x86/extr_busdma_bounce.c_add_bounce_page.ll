; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_add_bounce_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_add_bounce_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.bounce_zone* }
%struct.TYPE_7__ = type { i32 }
%struct.bounce_zone = type { i32, i32, i32 }
%struct.bounce_page = type { i32, i32, i32, i32, i8**, i32 }

@.str = private unnamed_addr constant [26 x i8] c"no bounce zone in dma tag\00", align 1
@nobounce_dmamap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"add_bounce_page: bad map %p\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"add_bounce_page: map doesn't need any pages\00", align 1
@bounce_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"add_bounce_page: free page list is empty\00", align 1
@links = common dso_local global i32 0, align 4
@BUS_DMA_KEEP_PG_OFFSET = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"Trying to bounce multiple pages with BUS_DMA_KEEP_PG_OFFSET\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Second page is not aligned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32, i32)* @add_bounce_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bounce_page(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bounce_zone*, align 8
  %14 = alloca %struct.bounce_page*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.bounce_zone*, %struct.bounce_zone** %16, align 8
  %18 = icmp ne %struct.bounce_zone* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, @nobounce_dmamap
  br label %26

26:                                               ; preds = %23, %6
  %27 = phi i1 [ false, %6 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = bitcast %struct.TYPE_8__* %29 to i8*
  %31 = call i32 @KASSERT(i32 %28, i8* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.bounce_zone*, %struct.bounce_zone** %33, align 8
  store %struct.bounce_zone* %34, %struct.bounce_zone** %13, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %26
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %41
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = call i32 @mtx_lock(i32* @bounce_lock)
  %58 = load %struct.bounce_zone*, %struct.bounce_zone** %13, align 8
  %59 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %58, i32 0, i32 2
  %60 = call %struct.bounce_page* @STAILQ_FIRST(i32* %59)
  store %struct.bounce_page* %60, %struct.bounce_page** %14, align 8
  %61 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %62 = icmp eq %struct.bounce_page* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %52
  %66 = load %struct.bounce_zone*, %struct.bounce_zone** %13, align 8
  %67 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %66, i32 0, i32 2
  %68 = load i32, i32* @links, align 4
  %69 = call i32 @STAILQ_REMOVE_HEAD(i32* %67, i32 %68)
  %70 = load %struct.bounce_zone*, %struct.bounce_zone** %13, align 8
  %71 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.bounce_zone*, %struct.bounce_zone** %13, align 8
  %75 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = call i32 @mtx_unlock(i32* @bounce_lock)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BUS_DMA_KEEP_PG_OFFSET, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %65
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @PAGE_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %91 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @PAGE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %98 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @KASSERT(i32 %103, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %86, %65
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %108 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i8* @PHYS_TO_VM_PAGE(i32 %109)
  %111 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %112 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %111, i32 0, i32 4
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 0
  store i8* %110, i8** %114, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @PAGE_MASK, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @KASSERT(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* %11, align 4
  %122 = call i8* @PHYS_TO_VM_PAGE(i32 %121)
  %123 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %124 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %123, i32 0, i32 4
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  store i8* %122, i8** %126, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @PAGE_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %131 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %134 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %138 = load i32, i32* @links, align 4
  %139 = call i32 @STAILQ_INSERT_TAIL(i32* %136, %struct.bounce_page* %137, i32 %138)
  %140 = load %struct.bounce_page*, %struct.bounce_page** %14, align 8
  %141 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  ret i32 %142
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bounce_page* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i8* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bounce_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
