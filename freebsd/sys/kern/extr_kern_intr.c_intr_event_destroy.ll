; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_event_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_event_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32, i32*, i32 }

@event_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@event_list = common dso_local global i32 0, align 4
@ie_list = common dso_local global i32 0, align 4
@M_ITHREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_event_destroy(%struct.intr_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intr_event*, align 8
  store %struct.intr_event* %0, %struct.intr_event** %3, align 8
  %4 = call i32 @mtx_lock(i32* @event_lock)
  %5 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %6 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %5, i32 0, i32 0
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %9 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %8, i32 0, i32 2
  %10 = call i32 @CK_SLIST_EMPTY(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %14 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %13, i32 0, i32 0
  %15 = call i32 @mtx_unlock(i32* %14)
  %16 = call i32 @mtx_unlock(i32* @event_lock)
  %17 = load i32, i32* @EBUSY, align 4
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %20 = load i32, i32* @ie_list, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* @event_list, %struct.intr_event* %19, i32 %20)
  %22 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %23 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %28 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ithread_destroy(i32* %29)
  %31 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %32 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %18
  %34 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %35 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %34, i32 0, i32 0
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = call i32 @mtx_unlock(i32* @event_lock)
  %38 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %39 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %38, i32 0, i32 0
  %40 = call i32 @mtx_destroy(i32* %39)
  %41 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %42 = load i32, i32* @M_ITHREAD, align 4
  %43 = call i32 @free(%struct.intr_event* %41, i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %33, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @CK_SLIST_EMPTY(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.intr_event*, i32) #1

declare dso_local i32 @ithread_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.intr_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
