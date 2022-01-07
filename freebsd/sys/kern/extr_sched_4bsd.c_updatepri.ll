; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_updatepri.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_updatepri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.thread = type { i32 }
%struct.td_sched = type { i32, i32 }

@averunnable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @updatepri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updatepri(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.td_sched*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = call %struct.td_sched* @td_get_sched(%struct.thread* %6)
  store %struct.td_sched* %7, %struct.td_sched** %3, align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @averunnable, i32 0, i32 0), align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @loadfactor(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %13 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 5, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %20 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %23 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %26 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %40, %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %34 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @decay_cpu(i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %29

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %47 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %18
  ret void
}

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @loadfactor(i32) #1

declare dso_local i32 @decay_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
