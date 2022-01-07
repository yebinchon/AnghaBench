; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_pqbatch_submit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_pqbatch_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32* }
%struct.vm_batchqueue = type { i32 }
%struct.vm_pagequeue = type { i32 }
%struct.TYPE_10__ = type { %struct.vm_pagequeue* }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"page %p is unmanaged\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"missing synchronization for page %p\00", align 1
@PQ_COUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid queue %d\00", align 1
@pqbatch = common dso_local global i32** null, align 8
@PQ_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid queue transition for page %p\00", align 1
@PGA_ENQUEUED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"page %p is enqueued with invalid queue index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_pqbatch_submit(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_batchqueue*, align 8
  %6 = alloca %struct.vm_pagequeue*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @VPO_UNMANAGED, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = bitcast %struct.TYPE_9__* %15 to i8*
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @vm_page_lockptr(%struct.TYPE_9__* %18)
  %20 = call i64 @mtx_owned(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi i1 [ true, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = bitcast %struct.TYPE_9__* %30 to i8*
  %32 = call i32 @KASSERT(i32 %29, i8* %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @PQ_COUNT, align 8
  %35 = icmp ult i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KASSERT(i32 %36, i8* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i32 @vm_phys_domain(%struct.TYPE_9__* %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call %struct.TYPE_10__* @vm_pagequeue_domain(%struct.TYPE_9__* %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %45, i64 %46
  store %struct.vm_pagequeue* %47, %struct.vm_pagequeue** %6, align 8
  %48 = call i32 (...) @critical_enter()
  %49 = load i32**, i32*** @pqbatch, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.vm_batchqueue* @DPCPU_PTR(i32 %56)
  store %struct.vm_batchqueue* %57, %struct.vm_batchqueue** %5, align 8
  %58 = load %struct.vm_batchqueue*, %struct.vm_batchqueue** %5, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = call i64 @vm_batchqueue_insert(%struct.vm_batchqueue* %58, %struct.TYPE_9__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %27
  %63 = call i32 (...) @critical_exit()
  br label %118

64:                                               ; preds = %27
  %65 = call i32 (...) @critical_exit()
  %66 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %6, align 8
  %67 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %66)
  %68 = call i32 (...) @critical_enter()
  %69 = load i32**, i32*** @pqbatch, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.vm_batchqueue* @DPCPU_PTR(i32 %76)
  store %struct.vm_batchqueue* %77, %struct.vm_batchqueue** %5, align 8
  %78 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %6, align 8
  %79 = load %struct.vm_batchqueue*, %struct.vm_batchqueue** %5, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @vm_pqbatch_process(%struct.vm_pagequeue* %78, %struct.vm_batchqueue* %79, i64 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %4, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @__predict_true(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %64
  %91 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %6, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = call i32 @vm_pqbatch_process_page(%struct.vm_pagequeue* %91, %struct.TYPE_9__* %92)
  br label %114

94:                                               ; preds = %64
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PQ_NONE, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = bitcast %struct.TYPE_9__* %101 to i8*
  %103 = call i32 @KASSERT(i32 %100, i8* %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @PGA_ENQUEUED, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = bitcast %struct.TYPE_9__* %111 to i8*
  %113 = call i32 @KASSERT(i32 %110, i8* %112)
  br label %114

114:                                              ; preds = %94, %90
  %115 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %6, align 8
  %116 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %115)
  %117 = call i32 (...) @critical_exit()
  br label %118

118:                                              ; preds = %114, %62
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @mtx_owned(i32) #1

declare dso_local i32 @vm_page_lockptr(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_phys_domain(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @vm_pagequeue_domain(%struct.TYPE_9__*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.vm_batchqueue* @DPCPU_PTR(i32) #1

declare dso_local i64 @vm_batchqueue_insert(%struct.vm_batchqueue*, %struct.TYPE_9__*) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @vm_pagequeue_lock(%struct.vm_pagequeue*) #1

declare dso_local i32 @vm_pqbatch_process(%struct.vm_pagequeue*, %struct.vm_batchqueue*, i64) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @vm_pqbatch_process_page(%struct.vm_pagequeue*, %struct.TYPE_9__*) #1

declare dso_local i32 @vm_pagequeue_unlock(%struct.vm_pagequeue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
