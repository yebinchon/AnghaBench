; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_pqbatch_process_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_pqbatch_process_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.vm_pagequeue = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.vm_domain = type { i32 }

@curthread = common dso_local global i32 0, align 4
@PGA_QUEUE_STATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"page %p doesn't belong to queue %p but has aflags %#x\00", align 1
@PGA_DEQUEUE = common dso_local global i32 0, align 4
@PGA_ENQUEUED = common dso_local global i32 0, align 4
@queue_ops = common dso_local global i32 0, align 4
@PGA_REQUEUE = common dso_local global i32 0, align 4
@PGA_REQUEUE_HEAD = common dso_local global i32 0, align 4
@plinks = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@PQ_INACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"head enqueue not supported for page %p\00", align 1
@queue_nops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_pagequeue*, %struct.TYPE_13__*)* @vm_pqbatch_process_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pqbatch_process_page(%struct.vm_pagequeue* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.vm_pagequeue*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.vm_domain*, align 8
  %6 = alloca i32, align 4
  store %struct.vm_pagequeue* %0, %struct.vm_pagequeue** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load i32, i32* @curthread, align 4
  %8 = call i32 @CRITICAL_ASSERT(i32 %7)
  %9 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %10 = call i32 @vm_pagequeue_assert_locked(%struct.vm_pagequeue* %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = call i32 @atomic_load_8(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = call %struct.vm_pagequeue* @vm_page_pagequeue(%struct.TYPE_13__* %15)
  %17 = icmp eq %struct.vm_pagequeue* %14, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PGA_QUEUE_STATE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i1 [ true, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %25, i8* %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PGA_DEQUEUE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PGA_ENQUEUED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @__predict_true(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = call i32 @vm_pagequeue_remove(%struct.vm_pagequeue* %45, %struct.TYPE_13__* %46)
  br label %48

48:                                               ; preds = %44, %36
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = call i32 @vm_page_dequeue_complete(%struct.TYPE_13__* %49)
  %51 = load i32, i32* @queue_ops, align 4
  %52 = call i32 @counter_u64_add(i32 %51, i32 1)
  br label %119

53:                                               ; preds = %23
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PGA_REQUEUE, align 4
  %56 = load i32, i32* @PGA_REQUEUE_HEAD, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %115

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PGA_ENQUEUED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %67 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @plinks, i32 0, i32 0), align 4
  %70 = call i32 @TAILQ_REMOVE(i32* %67, %struct.TYPE_13__* %68, i32 %69)
  br label %77

71:                                               ; preds = %60
  %72 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %73 = call i32 @vm_pagequeue_cnt_inc(%struct.vm_pagequeue* %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = load i32, i32* @PGA_ENQUEUED, align 4
  %76 = call i32 @vm_page_aflag_set(%struct.TYPE_13__* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PGA_REQUEUE_HEAD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %77
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PQ_INACTIVE, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = bitcast %struct.TYPE_13__* %89 to i8*
  %91 = call i32 @KASSERT(i32 %88, i8* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = call %struct.vm_domain* @vm_pagequeue_domain(%struct.TYPE_13__* %92)
  store %struct.vm_domain* %93, %struct.vm_domain** %5, align 8
  %94 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %95 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %94, i32 0, i32 0
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @plinks, i32 0, i32 0), align 4
  %98 = call i32 @TAILQ_INSERT_BEFORE(i32* %95, %struct.TYPE_13__* %96, i32 %97)
  br label %105

99:                                               ; preds = %77
  %100 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %101 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @plinks, i32 0, i32 0), align 4
  %104 = call i32 @TAILQ_INSERT_TAIL(i32* %101, %struct.TYPE_13__* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %82
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @PGA_REQUEUE, align 4
  %109 = load i32, i32* @PGA_REQUEUE_HEAD, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = call i32 @vm_page_aflag_clear(%struct.TYPE_13__* %106, i32 %111)
  %113 = load i32, i32* @queue_ops, align 4
  %114 = call i32 @counter_u64_add(i32 %113, i32 1)
  br label %118

115:                                              ; preds = %53
  %116 = load i32, i32* @queue_nops, align 4
  %117 = call i32 @counter_u64_add(i32 %116, i32 1)
  br label %118

118:                                              ; preds = %115, %105
  br label %119

119:                                              ; preds = %118, %48
  ret void
}

declare dso_local i32 @CRITICAL_ASSERT(i32) #1

declare dso_local i32 @vm_pagequeue_assert_locked(%struct.vm_pagequeue*) #1

declare dso_local i32 @atomic_load_8(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vm_pagequeue* @vm_page_pagequeue(%struct.TYPE_13__*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @vm_pagequeue_remove(%struct.vm_pagequeue*, %struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_dequeue_complete(%struct.TYPE_13__*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @vm_pagequeue_cnt_inc(%struct.vm_pagequeue*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.vm_domain* @vm_pagequeue_domain(%struct.TYPE_13__*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
