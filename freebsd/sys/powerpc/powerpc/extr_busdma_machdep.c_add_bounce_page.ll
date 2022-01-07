; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c_add_bounce_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c_add_bounce_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.bounce_zone* }
%struct.bounce_zone = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.bounce_page = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"no bounce zone in dma tag\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"add_bounce_page: map doesn't need any pages\00", align 1
@bounce_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"add_bounce_page: free page list is empty\00", align 1
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
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.bounce_zone*, %struct.bounce_zone** %20, align 8
  store %struct.bounce_zone* %21, %struct.bounce_zone** %11, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %28
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = call i32 @mtx_lock(i32* @bounce_lock)
  %45 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %46 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %45, i32 0, i32 2
  %47 = call %struct.bounce_page* @STAILQ_FIRST(i32* %46)
  store %struct.bounce_page* %47, %struct.bounce_page** %12, align 8
  %48 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %49 = icmp eq %struct.bounce_page* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %39
  %53 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %54 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %53, i32 0, i32 2
  %55 = load i32, i32* @links, align 4
  %56 = call i32 @STAILQ_REMOVE_HEAD(i32* %54, i32 %55)
  %57 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %58 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %62 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = call i32 @mtx_unlock(i32* @bounce_lock)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BUS_DMA_KEEP_PG_OFFSET, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %52
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @PAGE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %77 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @PAGE_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %84 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %72, %52
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %90 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @PHYS_TO_VM_PAGE(i32 %91)
  %93 = load %struct.bounce_page*, %struct.bounce_page** %12, align 8
  %94 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @PAGE_MASK, align 4
  %97 = and i32 %95, %96
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

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bounce_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
