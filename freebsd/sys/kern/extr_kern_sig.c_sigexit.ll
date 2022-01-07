; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigexit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_6__*, %struct.proc* }
%struct.TYPE_6__ = type { i32 }
%struct.proc = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@AXSIG = common dso_local global i32 0, align 4
@SIGPROP_CORE = common dso_local global i32 0, align 4
@SINGLE_NO_EXIT = common dso_local global i32 0, align 4
@WCOREFLAG = common dso_local global i32 0, align 4
@kern_logsigexit = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"pid %d (%s), jid %d, uid %d: exited on signal %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigexit(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 1
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %5, align 8
  %9 = load %struct.proc*, %struct.proc** %5, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %9, i32 %10)
  %12 = load i32, i32* @AXSIG, align 4
  %13 = load %struct.proc*, %struct.proc** %5, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @sigprop(i32 %17)
  %19 = load i32, i32* @SIGPROP_CORE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %2
  %23 = load %struct.proc*, %struct.proc** %5, align 8
  %24 = load i32, i32* @SINGLE_NO_EXIT, align 4
  %25 = call i64 @thread_single(%struct.proc* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.proc*, %struct.proc** %5, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.thread*, %struct.thread** %3, align 8
  %32 = call i64 @coredump(%struct.thread* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @WCOREFLAG, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i64, i64* @kern_logsigexit, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %38
  %42 = load i32, i32* @LOG_INFO, align 4
  %43 = load %struct.proc*, %struct.proc** %5, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.proc*, %struct.proc** %5, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.proc*, %struct.proc** %5, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.thread*, %struct.thread** %3, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @WCOREFLAG, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @WCOREFLAG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %71 = call i32 @log(i32 %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %55, i32 %60, i32 %64, i8* %70)
  br label %72

72:                                               ; preds = %41, %38
  br label %76

73:                                               ; preds = %22, %2
  %74 = load %struct.proc*, %struct.proc** %5, align 8
  %75 = call i32 @PROC_UNLOCK(%struct.proc* %74)
  br label %76

76:                                               ; preds = %73, %72
  %77 = load %struct.thread*, %struct.thread** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @exit1(%struct.thread* %77, i32 0, i32 %78)
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @sigprop(i32) #1

declare dso_local i64 @thread_single(%struct.proc*, i32) #1

declare dso_local i64 @coredump(%struct.thread*) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @exit1(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
