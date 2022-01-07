; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_thr_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_thr_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }

@td_plist = common dso_local global i32 0, align 4
@p_list = common dso_local global i32 0, align 4
@P_INMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread* @kdb_thr_next(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 0
  %7 = load %struct.proc*, %struct.proc** %6, align 8
  store %struct.proc* %7, %struct.proc** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = load i32, i32* @td_plist, align 4
  %10 = call %struct.thread* @TAILQ_NEXT(%struct.thread* %8, i32 %9)
  store %struct.thread* %10, %struct.thread** %3, align 8
  br label %11

11:                                               ; preds = %33, %1
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = icmp ne %struct.thread* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  store %struct.thread* %15, %struct.thread** %2, align 8
  br label %37

16:                                               ; preds = %11
  %17 = load %struct.proc*, %struct.proc** %4, align 8
  %18 = load i32, i32* @p_list, align 4
  %19 = call %struct.proc* @LIST_NEXT(%struct.proc* %17, i32 %18)
  store %struct.proc* %19, %struct.proc** %4, align 8
  %20 = load %struct.proc*, %struct.proc** %4, align 8
  %21 = icmp ne %struct.proc* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.proc*, %struct.proc** %4, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @P_INMEM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.proc*, %struct.proc** %4, align 8
  %31 = call %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc* %30)
  store %struct.thread* %31, %struct.thread** %3, align 8
  br label %32

32:                                               ; preds = %29, %22, %16
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.proc*, %struct.proc** %4, align 8
  %35 = icmp ne %struct.proc* %34, null
  br i1 %35, label %11, label %36

36:                                               ; preds = %33
  store %struct.thread* null, %struct.thread** %2, align 8
  br label %37

37:                                               ; preds = %36, %14
  %38 = load %struct.thread*, %struct.thread** %2, align 8
  ret %struct.thread* %38
}

declare dso_local %struct.thread* @TAILQ_NEXT(%struct.thread*, i32) #1

declare dso_local %struct.proc* @LIST_NEXT(%struct.proc*, i32) #1

declare dso_local %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
