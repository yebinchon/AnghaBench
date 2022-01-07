; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_kern_thr_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_kern_thr_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32, i32, i32 }

@TDB_EXIT = common dso_local global i32 0, align 4
@PTRACE_LWP = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"too few threads\00", align 1
@RACCT_NTHR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_thr_exit(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 1
  %7 = load %struct.proc*, %struct.proc** %6, align 8
  store %struct.proc* %7, %struct.proc** %4, align 8
  %8 = load %struct.proc*, %struct.proc** %4, align 8
  %9 = call i32 @PROC_LOCK(%struct.proc* %8)
  %10 = load %struct.proc*, %struct.proc** %4, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.proc*, %struct.proc** %4, align 8
  %20 = call i32 @PROC_UNLOCK(%struct.proc* %19)
  store i32 0, i32* %2, align 4
  br label %68

21:                                               ; preds = %1
  %22 = load %struct.proc*, %struct.proc** %4, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @TDB_EXIT, align 4
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.proc*, %struct.proc** %4, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PTRACE_LWP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load %struct.thread*, %struct.thread** %3, align 8
  %39 = load i32, i32* @SIGTRAP, align 4
  %40 = call i32 @ptracestop(%struct.thread* %38, i32 %39, i32* null)
  br label %41

41:                                               ; preds = %37, %21
  %42 = load %struct.proc*, %struct.proc** %4, align 8
  %43 = call i32 @PROC_UNLOCK(%struct.proc* %42)
  %44 = load %struct.thread*, %struct.thread** %3, align 8
  %45 = call i32 @tidhash_remove(%struct.thread* %44)
  %46 = load %struct.proc*, %struct.proc** %4, align 8
  %47 = call i32 @PROC_LOCK(%struct.proc* %46)
  %48 = load %struct.proc*, %struct.proc** %4, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.proc*, %struct.proc** %4, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.proc*, %struct.proc** %4, align 8
  %59 = load i32, i32* @RACCT_NTHR, align 4
  %60 = call i32 @racct_sub(%struct.proc* %58, i32 %59, i32 1)
  %61 = load %struct.thread*, %struct.thread** %3, align 8
  %62 = call i32 @tdsigcleanup(%struct.thread* %61)
  %63 = load %struct.proc*, %struct.proc** %4, align 8
  %64 = call i32 @PROC_SLOCK(%struct.proc* %63)
  %65 = load %struct.proc*, %struct.proc** %4, align 8
  %66 = call i32 @thread_stopped(%struct.proc* %65)
  %67 = call i32 (...) @thread_exit()
  br label %68

68:                                               ; preds = %41, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @ptracestop(%struct.thread*, i32, i32*) #1

declare dso_local i32 @tidhash_remove(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @racct_sub(%struct.proc*, i32, i32) #1

declare dso_local i32 @tdsigcleanup(%struct.thread*) #1

declare dso_local i32 @PROC_SLOCK(%struct.proc*) #1

declare dso_local i32 @thread_stopped(%struct.proc*) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
