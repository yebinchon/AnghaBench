; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_donice.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_donice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PRIO_MAX = common dso_local global i32 0, align 4
@PRIO_MIN = common dso_local global i32 0, align 4
@PRIV_SCHED_SETPRIORITY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32)* @donice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @donice(%struct.thread* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.proc*, %struct.proc** %6, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %9, i32 %10)
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = load %struct.proc*, %struct.proc** %6, align 8
  %14 = call i32 @p_cansched(%struct.thread* %12, %struct.proc* %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PRIO_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @PRIO_MAX, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PRIO_MIN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @PRIO_MIN, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.proc*, %struct.proc** %6, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.thread*, %struct.thread** %5, align 8
  %38 = load i32, i32* @PRIV_SCHED_SETPRIORITY, align 4
  %39 = call i64 @priv_check(%struct.thread* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EACCES, align 4
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %36, %30
  %44 = load %struct.proc*, %struct.proc** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @sched_nice(%struct.proc* %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %41, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @p_cansched(%struct.thread*, %struct.proc*) #1

declare dso_local i64 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @sched_nice(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
