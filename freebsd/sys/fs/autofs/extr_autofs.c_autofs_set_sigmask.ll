; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_set_sigmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_set_sigmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@curproc = common dso_local global %struct.TYPE_9__* null, align 8
@autofs_sig_set = common dso_local global i32* null, align 8
@curthread = common dso_local global %struct.TYPE_8__* null, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@SIGPROCMASK_PROC_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @autofs_set_sigmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autofs_set_sigmask(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @SIGFILLSET(i32 %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curproc, align 8
  %8 = call i32 @PROC_LOCK(%struct.TYPE_9__* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curproc, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %52, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** @autofs_sig_set, align 8
  %17 = call i32 @nitems(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @autofs_sig_set, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SIGISMEMBER(i32 %22, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %19
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curproc, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @autofs_sig_set, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SIGISMEMBER(i32 %35, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %3, align 4
  %45 = load i32*, i32** @autofs_sig_set, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SIGDELSET(i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %43, %30, %19
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %14

55:                                               ; preds = %14
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curproc, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @mtx_unlock(i32* %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %62 = load i32, i32* @SIG_SETMASK, align 4
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @SIGPROCMASK_PROC_LOCKED, align 4
  %65 = call i32 @kern_sigprocmask(%struct.TYPE_8__* %61, i32 %62, i32* %3, i32* %63, i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curproc, align 8
  %67 = call i32 @PROC_UNLOCK(%struct.TYPE_9__* %66)
  ret void
}

declare dso_local i32 @SIGFILLSET(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @SIGDELSET(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kern_sigprocmask(%struct.TYPE_8__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
