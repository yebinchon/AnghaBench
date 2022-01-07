; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_check_susp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_check_susp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.proc* }
%struct.proc = type { i32 }

@TDF_NEEDSUSPCHK = common dso_local global i32 0, align 4
@P_SINGLE_EXIT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@TDB_SUSPEND = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32)* @umtxq_check_susp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umtxq_check_susp(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TDF_NEEDSUSPCHK, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 2
  %18 = load %struct.proc*, %struct.proc** %17, align 8
  store %struct.proc* %18, %struct.proc** %6, align 8
  %19 = load %struct.proc*, %struct.proc** %6, align 8
  %20 = call i32 @PROC_LOCK(%struct.proc* %19)
  %21 = load %struct.proc*, %struct.proc** %6, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @P_SINGLE_EXIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @EINTR, align 4
  store i32 %28, i32* %7, align 4
  br label %57

29:                                               ; preds = %15
  %30 = load %struct.proc*, %struct.proc** %6, align 8
  %31 = call i64 @P_SHOULDSTOP(%struct.proc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = load %struct.proc*, %struct.proc** %6, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @P_TRACED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TDB_SUSPEND, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40, %29
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @thread_suspend_check(i32 0)
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @ERESTART, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %40, %33
  br label %57

57:                                               ; preds = %56, %27
  %58 = load %struct.proc*, %struct.proc** %6, align 8
  %59 = call i32 @PROC_UNLOCK(%struct.proc* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @P_SHOULDSTOP(%struct.proc*) #1

declare dso_local i32 @thread_suspend_check(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
