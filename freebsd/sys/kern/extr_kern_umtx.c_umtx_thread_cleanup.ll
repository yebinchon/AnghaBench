; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_thread_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_thread_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i64, i64, %struct.umtx_q* }
%struct.umtx_q = type { i64, i32 }
%struct.umtx_pi = type { i32* }

@PRI_MAX = common dso_local global i64 0, align 8
@umtx_lock = common dso_local global i32 0, align 4
@pi_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"priv \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @umtx_thread_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umtx_thread_cleanup(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.umtx_q*, align 8
  %4 = alloca %struct.umtx_pi*, align 8
  %5 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 3
  %8 = load %struct.umtx_q*, %struct.umtx_q** %7, align 8
  store %struct.umtx_q* %8, %struct.umtx_q** %3, align 8
  %9 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %10 = icmp ne %struct.umtx_q* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %13 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PRI_MAX, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %19 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %18, i32 0, i32 1
  %20 = call i32 @TAILQ_EMPTY(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %17, %11
  %23 = call i32 @mtx_lock(i32* @umtx_lock)
  %24 = load i64, i64* @PRI_MAX, align 8
  %25 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %26 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %32, %22
  %28 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %29 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %28, i32 0, i32 1
  %30 = call %struct.umtx_pi* @TAILQ_FIRST(i32* %29)
  store %struct.umtx_pi* %30, %struct.umtx_pi** %4, align 8
  %31 = icmp ne %struct.umtx_pi* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %34 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %36 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %35, i32 0, i32 1
  %37 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %38 = load i32, i32* @pi_link, align 4
  %39 = call i32 @TAILQ_REMOVE(i32* %36, %struct.umtx_pi* %37, i32 %38)
  br label %27

40:                                               ; preds = %27
  %41 = call i32 @mtx_unlock(i32* @umtx_lock)
  br label %42

42:                                               ; preds = %40, %17
  %43 = load %struct.thread*, %struct.thread** %2, align 8
  %44 = load i64, i64* @PRI_MAX, align 8
  %45 = call i32 @sched_lend_user_prio_cond(%struct.thread* %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %1
  %47 = load %struct.thread*, %struct.thread** %2, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.thread*, %struct.thread** %2, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.thread*, %struct.thread** %2, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %89

62:                                               ; preds = %56, %51, %46
  %63 = load %struct.thread*, %struct.thread** %2, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.thread*, %struct.thread** %2, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @umtx_read_uptr(%struct.thread* %69, i64 %70, i64* %5)
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.thread*, %struct.thread** %2, align 8
  %74 = load %struct.thread*, %struct.thread** %2, align 8
  %75 = getelementptr inbounds %struct.thread, %struct.thread* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @umtx_cleanup_rb_list(%struct.thread* %73, i64 %76, i64* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.thread*, %struct.thread** %2, align 8
  %79 = load %struct.thread*, %struct.thread** %2, align 8
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @umtx_cleanup_rb_list(%struct.thread* %78, i64 %81, i64* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load %struct.thread*, %struct.thread** %2, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @umtx_handle_rb(%struct.thread* %86, i64 %87, i32* null, i32 1)
  br label %89

89:                                               ; preds = %61, %85, %72
  ret void
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.umtx_pi* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.umtx_pi*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sched_lend_user_prio_cond(%struct.thread*, i64) #1

declare dso_local i32 @umtx_read_uptr(%struct.thread*, i64, i64*) #1

declare dso_local i32 @umtx_cleanup_rb_list(%struct.thread*, i64, i64*, i8*) #1

declare dso_local i32 @umtx_handle_rb(%struct.thread*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
