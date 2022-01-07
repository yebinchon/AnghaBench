; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigsuspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32, %struct.proc* }
%struct.proc = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }

@SIG_SETMASK = common dso_local global i32 0, align 4
@SIGPROCMASK_PROC_LOCKED = common dso_local global i32 0, align 4
@TDP_OLDMASK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sig %d\00", align 1
@TDP_NERRNO = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_sigsuspend(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 3
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %5, align 8
  %11 = load %struct.proc*, %struct.proc** %5, align 8
  %12 = call i32 @PROC_LOCK(%struct.proc* %11)
  %13 = load %struct.thread*, %struct.thread** %3, align 8
  %14 = load i32, i32* @SIG_SETMASK, align 4
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 2
  %17 = load i32, i32* @SIGPROCMASK_PROC_LOCKED, align 4
  %18 = call i32 @kern_sigprocmask(%struct.thread* %13, i32 %14, i32* %4, i32* %16, i32 %17)
  %19 = load i32, i32* @TDP_OLDMASK, align 4
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.proc*, %struct.proc** %5, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.thread*, i32)**
  %29 = load i32 (%struct.thread*, i32)*, i32 (%struct.thread*, i32)** %28, align 8
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = load i32, i32* @EINTR, align 4
  %32 = call i32 %29(%struct.thread* %30, i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %74, %2
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %48, %37
  %39 = load %struct.proc*, %struct.proc** %5, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 0
  %41 = load %struct.proc*, %struct.proc** %5, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 1
  %43 = load i32, i32* @PPAUSE, align 4
  %44 = load i32, i32* @PCATCH, align 4
  %45 = or i32 %43, %44
  %46 = call i64 @msleep(%struct.TYPE_4__** %40, i32* %42, i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %38

49:                                               ; preds = %38
  %50 = call i32 @thread_suspend_check(i32 0)
  %51 = load %struct.proc*, %struct.proc** %5, align 8
  %52 = getelementptr inbounds %struct.proc, %struct.proc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @mtx_lock(i32* %54)
  br label %56

56:                                               ; preds = %60, %49
  %57 = load %struct.thread*, %struct.thread** %3, align 8
  %58 = call i32 @cursig(%struct.thread* %57)
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @KASSERT(i32 %63, i8* %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @postsig(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.proc*, %struct.proc** %5, align 8
  %76 = getelementptr inbounds %struct.proc, %struct.proc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @mtx_unlock(i32* %78)
  br label %33

80:                                               ; preds = %33
  %81 = load %struct.proc*, %struct.proc** %5, align 8
  %82 = call i32 @PROC_UNLOCK(%struct.proc* %81)
  %83 = load i32, i32* @EINTR, align 4
  %84 = load %struct.thread*, %struct.thread** %3, align 8
  %85 = getelementptr inbounds %struct.thread, %struct.thread* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @TDP_NERRNO, align 4
  %87 = load %struct.thread*, %struct.thread** %3, align 8
  %88 = getelementptr inbounds %struct.thread, %struct.thread* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* @EJUSTRETURN, align 4
  ret i32 %91
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

declare dso_local i64 @msleep(%struct.TYPE_4__**, i32*, i32, i8*, i32) #1

declare dso_local i32 @thread_suspend_check(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cursig(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @postsig(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
