; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_set_sigmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_set_sigmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@newnfs_sig_set = common dso_local global i32* null, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@SIGPROCMASK_PROC_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @newnfs_set_sigmask(%struct.thread* %0, i32* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @SIGFILLSET(i32 %8)
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = icmp eq %struct.thread* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %13, %struct.thread** %3, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %7, align 8
  %18 = load %struct.proc*, %struct.proc** %7, align 8
  %19 = call i32 @PROC_LOCK(%struct.proc* %18)
  %20 = load %struct.proc*, %struct.proc** %7, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %63, %14
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** @newnfs_sig_set, align 8
  %28 = call i32 @nitems(i32* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %25
  %31 = load %struct.thread*, %struct.thread** %3, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** @newnfs_sig_set, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SIGISMEMBER(i32 %33, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %30
  %42 = load %struct.proc*, %struct.proc** %7, align 8
  %43 = getelementptr inbounds %struct.proc, %struct.proc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** @newnfs_sig_set, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SIGISMEMBER(i32 %46, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = load i32*, i32** @newnfs_sig_set, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SIGDELSET(i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %54, %41, %30
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %25

66:                                               ; preds = %25
  %67 = load %struct.proc*, %struct.proc** %7, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @mtx_unlock(i32* %70)
  %72 = load %struct.thread*, %struct.thread** %3, align 8
  %73 = load i32, i32* @SIG_SETMASK, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @SIGPROCMASK_PROC_LOCKED, align 4
  %76 = call i32 @kern_sigprocmask(%struct.thread* %72, i32 %73, i32* %5, i32* %74, i32 %75)
  %77 = load %struct.proc*, %struct.proc** %7, align 8
  %78 = call i32 @PROC_UNLOCK(%struct.proc* %77)
  ret void
}

declare dso_local i32 @SIGFILLSET(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @SIGDELSET(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
