; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_busdma_bounce.c_add_bounce_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_busdma_bounce.c_add_bounce_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.bounce_zone* }
%struct.TYPE_6__ = type { i32 }
%struct.bounce_zone = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32 }
%struct.bounce_page = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"no bounce zone in dma tag\00", align 1
@DMAMAP_COULD_BOUNCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"add_bounce_page: bad map %p\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"add_bounce_page: map doesn't need any pages\00", align 1
@bounce_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"add_bounce_page: free page list is empty\00", align 1
@links = common dso_local global i32 0, align 4
@BUS_DMA_KEEP_PG_OFFSET = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i32)* @add_bounce_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bounce_page(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bounce_zone*, align 8
  %12 = alloca %struct.bounce_page*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.bounce_zone*, %struct.bounce_zone** %14, align 8
  %16 = icmp ne %struct.bounce_zone* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DMAMAP_COULD_BOUNCE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = bitcast %struct.TYPE_7__* %26 to i8*
  %28 = call i32 @KASSERT(i32 %25, i8* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.bounce_zone*, %struct.bounce_zone** %30, align 8
  store %struct.bounce_zone* %31, %struct.bounce_zone** %11, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %5
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %38
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = call i32 @mtx_lock(i32* @bounce_lock)
  %55 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %56 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %55, i32 0, i32 2
  %57 = call %struct.bounce_page* @STAILQ_FIRST(i32* %56)
  store %struct.bounce_page* %57, %struct.bounce_page** %12, align 8
  %58 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %59 = icmp eq %struct.bounce_page* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %49
  %63 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %64 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %63, i32 0, i32 2
  %65 = load i32, i32* @links, align 4
  %66 = call i32 @STAILQ_REMOVE_HEAD(i32* %64, i32 %65)
  %67 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %68 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %72 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = call i32 @mtx_unlock(i32* @bounce_lock)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BUS_DMA_KEEP_PG_OFFSET, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %62
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @PAGE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %88 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @PAGE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %95 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %83, %62
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %101 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @PHYS_TO_VM_PAGE(i32 %102)
  %104 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %105 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @PAGE_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %110 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %113 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %117 = load i32, i32* @links, align 4
  %118 = call i32 @STAILQ_INSERT_TAIL(i32* %115, %struct.bounce_page* %116, i32 %117)
  %119 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %120 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  ret i32 %121
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bounce_page* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bounce_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
