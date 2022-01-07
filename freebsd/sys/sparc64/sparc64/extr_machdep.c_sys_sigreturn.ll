; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_sys_sigreturn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_sys_sigreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.sigreturn_args = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }

@SIGILL = common dso_local global i32 0, align 4
@KTR_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sigreturn: td=%p ucp=%p\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"sigreturn: efault td=%p\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"sigreturn: return td=%p pc=%#lx sp=%#lx tstate=%#lx\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigreturn(%struct.thread* %0, %struct.sigreturn_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sigreturn_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sigreturn_args* %1, %struct.sigreturn_args** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %6, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = call i64 @rwindow_save(%struct.thread* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.proc*, %struct.proc** %6, align 8
  %18 = call i32 @PROC_LOCK(%struct.proc* %17)
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load i32, i32* @SIGILL, align 4
  %21 = call i32 @sigexit(%struct.thread* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @KTR_SIG, align 4
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = load %struct.sigreturn_args*, %struct.sigreturn_args** %5, align 8
  %26 = getelementptr inbounds %struct.sigreturn_args, %struct.sigreturn_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CTR2(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.thread* %24, i32 %27)
  %29 = load %struct.sigreturn_args*, %struct.sigreturn_args** %5, align 8
  %30 = getelementptr inbounds %struct.sigreturn_args, %struct.sigreturn_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @copyin(i32 %31, %struct.TYPE_5__* %8, i32 16)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load i32, i32* @KTR_SIG, align 4
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = call i32 @CTR1(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.thread* %36)
  %38 = load i32, i32* @EFAULT, align 4
  store i32 %38, i32* %3, align 4
  br label %66

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %7, align 8
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = call i32 @set_mcontext(%struct.thread* %41, %struct.TYPE_6__* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %66

48:                                               ; preds = %39
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = load i32, i32* @SIG_SETMASK, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %52 = call i32 @kern_sigprocmask(%struct.thread* %49, i32 %50, i32* %51, i32* null, i32 0)
  %53 = load i32, i32* @KTR_SIG, align 4
  %54 = load %struct.thread*, %struct.thread** %4, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CTR4(i32 %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.thread* %54, i32 %57, i32 %60, i32 %63)
  %65 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %48, %46, %34
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @rwindow_save(%struct.thread*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigexit(%struct.thread*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.thread*, i32) #1

declare dso_local i64 @copyin(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @CTR1(i32, i8*, %struct.thread*) #1

declare dso_local i32 @set_mcontext(%struct.thread*, %struct.TYPE_6__*) #1

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

declare dso_local i32 @CTR4(i32, i8*, %struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
