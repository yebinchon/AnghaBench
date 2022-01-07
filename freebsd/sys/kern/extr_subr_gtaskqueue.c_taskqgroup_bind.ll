; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_taskqgroup_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_taskqgroup_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqgroup = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.taskq_bind_task = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@taskqgroup_binder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.taskqgroup*)* @taskqgroup_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taskqgroup_bind(%struct.taskqgroup* %0) #0 {
  %2 = alloca %struct.taskqgroup*, align 8
  %3 = alloca %struct.taskq_bind_task*, align 8
  %4 = alloca i32, align 4
  store %struct.taskqgroup* %0, %struct.taskqgroup** %2, align 8
  %5 = load %struct.taskqgroup*, %struct.taskqgroup** %2, align 8
  %6 = getelementptr inbounds %struct.taskqgroup, %struct.taskqgroup* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %47, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.taskqgroup*, %struct.taskqgroup** %2, align 8
  %14 = getelementptr inbounds %struct.taskqgroup, %struct.taskqgroup* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call %struct.taskq_bind_task* @malloc(i32 8, i32 %18, i32 %19)
  store %struct.taskq_bind_task* %20, %struct.taskq_bind_task** %3, align 8
  %21 = load %struct.taskq_bind_task*, %struct.taskq_bind_task** %3, align 8
  %22 = getelementptr inbounds %struct.taskq_bind_task, %struct.taskq_bind_task* %21, i32 0, i32 0
  %23 = load i32, i32* @taskqgroup_binder, align 4
  %24 = load %struct.taskq_bind_task*, %struct.taskq_bind_task** %3, align 8
  %25 = call i32 @GTASK_INIT(i32* %22, i32 0, i32 0, i32 %23, %struct.taskq_bind_task* %24)
  %26 = load %struct.taskqgroup*, %struct.taskqgroup** %2, align 8
  %27 = getelementptr inbounds %struct.taskqgroup, %struct.taskqgroup* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.taskq_bind_task*, %struct.taskq_bind_task** %3, align 8
  %35 = getelementptr inbounds %struct.taskq_bind_task, %struct.taskq_bind_task* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.taskqgroup*, %struct.taskqgroup** %2, align 8
  %37 = getelementptr inbounds %struct.taskqgroup, %struct.taskqgroup* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.taskq_bind_task*, %struct.taskq_bind_task** %3, align 8
  %45 = getelementptr inbounds %struct.taskq_bind_task, %struct.taskq_bind_task* %44, i32 0, i32 0
  %46 = call i32 @grouptaskqueue_enqueue(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %17
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %11

50:                                               ; preds = %9, %11
  ret void
}

declare dso_local %struct.taskq_bind_task* @malloc(i32, i32, i32) #1

declare dso_local i32 @GTASK_INIT(i32*, i32, i32, i32, %struct.taskq_bind_task*) #1

declare dso_local i32 @grouptaskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
