; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_swapqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_swapqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.vm_pagequeue = type { i32 }
%struct.TYPE_19__ = type { %struct.vm_pagequeue* }

@PQ_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"vm_page_swapqueue: invalid queues (%d, %d)\00", align 1
@PGA_ENQUEUED = common dso_local global i32 0, align 4
@plinks = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@PGA_DEQUEUE = common dso_local global i32 0, align 4
@PGA_REQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_swapqueue(%struct.TYPE_18__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_pagequeue*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @PQ_COUNT, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @PQ_COUNT, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %17, %13, %3
  %22 = phi i1 [ false, %13 ], [ false, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %23, i8* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = call i32 @vm_page_assert_locked(%struct.TYPE_18__* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = call %struct.TYPE_19__* @vm_pagequeue_domain(%struct.TYPE_18__* %30)
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %33, i64 %34
  store %struct.vm_pagequeue* %35, %struct.vm_pagequeue** %7, align 8
  %36 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %37 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @__predict_false(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %21
  %47 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %48 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %47)
  br label %116

49:                                               ; preds = %21
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PGA_ENQUEUED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i64 @__predict_true(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %49
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @plinks, i32 0, i32 0), align 4
  %62 = call %struct.TYPE_18__* @TAILQ_NEXT(%struct.TYPE_18__* %60, i32 %61)
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %8, align 8
  %63 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %64 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %63, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @plinks, i32 0, i32 0), align 4
  %67 = call i32 @TAILQ_REMOVE(i32* %64, %struct.TYPE_18__* %65, i32 %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = load i32, i32* @PGA_ENQUEUED, align 4
  %70 = call i32 @vm_page_aflag_clear(%struct.TYPE_18__* %68, i32 %69)
  store i32 1, i32* %9, align 4
  br label %72

71:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* @PGA_DEQUEUE, align 4
  %77 = load i32, i32* @PGA_REQUEUE, align 4
  %78 = call i32 @vm_page_pqstate_cmpset(%struct.TYPE_18__* %73, i64 %74, i64 %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @__predict_false(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %72
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = load i32, i32* @PGA_ENQUEUED, align 4
  %90 = call i32 @vm_page_aflag_set(%struct.TYPE_18__* %88, i32 %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %92 = icmp ne %struct.TYPE_18__* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @plinks, i32 0, i32 0), align 4
  %97 = call i32 @TAILQ_INSERT_BEFORE(%struct.TYPE_18__* %94, %struct.TYPE_18__* %95, i32 %96)
  br label %104

98:                                               ; preds = %87
  %99 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %100 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %99, i32 0, i32 0
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @plinks, i32 0, i32 0), align 4
  %103 = call i32 @TAILQ_INSERT_TAIL(i32* %100, %struct.TYPE_18__* %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %93
  br label %105

105:                                              ; preds = %104, %84
  %106 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %107 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %106)
  br label %116

108:                                              ; preds = %72
  %109 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %110 = call i32 @vm_pagequeue_cnt_dec(%struct.vm_pagequeue* %109)
  %111 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %112 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @vm_page_pqbatch_submit(%struct.TYPE_18__* %113, i64 %114)
  br label %116

116:                                              ; preds = %108, %105, %46
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_assert_locked(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @vm_pagequeue_domain(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_pagequeue_lock(%struct.vm_pagequeue*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @vm_pagequeue_unlock(%struct.vm_pagequeue*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local %struct.TYPE_18__* @TAILQ_NEXT(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vm_page_pqstate_cmpset(%struct.TYPE_18__*, i64, i64, i32, i32) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @vm_pagequeue_cnt_dec(%struct.vm_pagequeue*) #1

declare dso_local i32 @vm_page_pqbatch_submit(%struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
