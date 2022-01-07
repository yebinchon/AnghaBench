; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.td_sched = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MA_NOTRECURSED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"sched_bind: can only bind curthread\00", align 1
@TSF_BOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%p must be migratable\00", align 1
@cpuid = common dso_local global i32 0, align 4
@SW_VOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_bind(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.td_sched*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = load i32, i32* @MA_NOTRECURSED, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %6, i32 %9)
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  %13 = icmp eq %struct.thread* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.thread*, %struct.thread** %3, align 8
  %17 = call %struct.td_sched* @td_get_sched(%struct.thread* %16)
  store %struct.td_sched* %17, %struct.td_sched** %5, align 8
  %18 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %19 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TSF_BOUND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = call i32 @sched_unbind(%struct.thread* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = call i32 @THREAD_CAN_MIGRATE(%struct.thread* %28)
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = bitcast %struct.thread* %30 to i8*
  %32 = call i32 @KASSERT(i32 %29, i8* %31)
  %33 = load i32, i32* @TSF_BOUND, align 4
  %34 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %35 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = call i32 (...) @sched_pin()
  %39 = load i32, i32* @cpuid, align 4
  %40 = call i32 @PCPU_GET(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %50

44:                                               ; preds = %27
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %47 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @SW_VOL, align 4
  %49 = call i32 @mi_switch(i32 %48, i32* null)
  br label %50

50:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @sched_unbind(%struct.thread*) #1

declare dso_local i32 @THREAD_CAN_MIGRATE(%struct.thread*) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @mi_switch(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
