; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_event_bind_ithread_cpuset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_event_bind_ithread_cpuset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_event_bind_ithread_cpuset(%struct.intr_event* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_event*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.intr_event* %0, %struct.intr_event** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %8 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %11 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %16 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %23 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %22, i32 0, i32 0
  %24 = call i32 @mtx_unlock(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @cpuset_setthread(i32 %25, i32* %26)
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %30 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENODEV, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cpuset_setthread(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
