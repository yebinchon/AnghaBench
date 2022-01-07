; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_pre_execve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_pre_execve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32, %struct.vmspace* }
%struct.vmspace = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"non-current thread %p\00", align 1
@P_HADTHREADS = common dso_local global i32 0, align 4
@SINGLE_BOUNDARY = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@TDP_EXECVMSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"nested execve\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pre_execve(%struct.thread* %0, %struct.vmspace** %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.vmspace**, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.vmspace** %1, %struct.vmspace*** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = load %struct.thread*, %struct.thread** @curthread, align 8
  %9 = icmp eq %struct.thread* %7, %8
  %10 = zext i1 %9 to i32
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = bitcast %struct.thread* %11 to i8*
  %13 = call i32 @KASSERT(i32 %10, i8* %12)
  store i32 0, i32* %6, align 4
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 1
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %5, align 8
  %17 = load %struct.proc*, %struct.proc** %5, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @P_HADTHREADS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.proc*, %struct.proc** %5, align 8
  %25 = call i32 @PROC_LOCK(%struct.proc* %24)
  %26 = load %struct.proc*, %struct.proc** %5, align 8
  %27 = load i32, i32* @SINGLE_BOUNDARY, align 4
  %28 = call i64 @thread_single(%struct.proc* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @ERESTART, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = load %struct.proc*, %struct.proc** %5, align 8
  %34 = call i32 @PROC_UNLOCK(%struct.proc* %33)
  br label %35

35:                                               ; preds = %32, %2
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load %struct.thread*, %struct.thread** %3, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TDP_EXECVMSPC, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %38, %35
  %46 = phi i1 [ true, %35 ], [ %44, %38 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.proc*, %struct.proc** %5, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 1
  %51 = load %struct.vmspace*, %struct.vmspace** %50, align 8
  %52 = load %struct.vmspace**, %struct.vmspace*** %4, align 8
  store %struct.vmspace* %51, %struct.vmspace** %52, align 8
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @thread_single(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
