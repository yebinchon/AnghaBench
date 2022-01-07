; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_flush_input_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_flush_input_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.ng_queue }
%struct.ng_queue = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 (i32, i32)*, i32 }

@el_next = common dso_local global i32 0, align 4
@OP_PENDING = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ng_flush_input_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_flush_input_queue(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.ng_queue*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store %struct.ng_queue* %6, %struct.ng_queue** %3, align 8
  %7 = load %struct.ng_queue*, %struct.ng_queue** %3, align 8
  %8 = call i32 @NG_QUEUE_LOCK(%struct.ng_queue* %7)
  br label %9

9:                                                ; preds = %71, %1
  %10 = load %struct.ng_queue*, %struct.ng_queue** %3, align 8
  %11 = getelementptr inbounds %struct.ng_queue, %struct.ng_queue* %10, i32 0, i32 1
  %12 = call %struct.TYPE_9__* @STAILQ_FIRST(i32* %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %76

14:                                               ; preds = %9
  %15 = load %struct.ng_queue*, %struct.ng_queue** %3, align 8
  %16 = getelementptr inbounds %struct.ng_queue, %struct.ng_queue* %15, i32 0, i32 1
  %17 = load i32, i32* @el_next, align 4
  %18 = call i32 @STAILQ_REMOVE_HEAD(i32* %16, i32 %17)
  %19 = load %struct.ng_queue*, %struct.ng_queue** %3, align 8
  %20 = getelementptr inbounds %struct.ng_queue, %struct.ng_queue* %19, i32 0, i32 1
  %21 = call i64 @STAILQ_EMPTY(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.ng_queue*, %struct.ng_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ng_queue, %struct.ng_queue* %24, i32 0, i32 0
  %26 = load i32, i32* @OP_PENDING, align 4
  %27 = call i32 @atomic_clear_int(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %14
  %29 = load %struct.ng_queue*, %struct.ng_queue** %3, align 8
  %30 = call i32 @NG_QUEUE_UNLOCK(%struct.ng_queue* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOENT, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = call i64 @refcount_release(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32 (i32, i32)*, i32 (i32, i32)** %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %58(i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %53, %46
  br label %71

71:                                               ; preds = %70, %28
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = call i32 @NG_FREE_ITEM(%struct.TYPE_9__* %72)
  %74 = load %struct.ng_queue*, %struct.ng_queue** %3, align 8
  %75 = call i32 @NG_QUEUE_LOCK(%struct.ng_queue* %74)
  br label %9

76:                                               ; preds = %9
  %77 = load %struct.ng_queue*, %struct.ng_queue** %3, align 8
  %78 = call i32 @NG_QUEUE_UNLOCK(%struct.ng_queue* %77)
  ret void
}

declare dso_local i32 @NG_QUEUE_LOCK(%struct.ng_queue*) #1

declare dso_local %struct.TYPE_9__* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @NG_QUEUE_UNLOCK(%struct.ng_queue*) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @NG_FREE_ITEM(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
