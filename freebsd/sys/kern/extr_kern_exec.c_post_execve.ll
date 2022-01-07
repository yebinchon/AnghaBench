; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_post_execve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_post_execve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32, %struct.vmspace* }
%struct.vmspace = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"non-current thread %p\00", align 1
@P_HADTHREADS = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@SINGLE_EXIT = common dso_local global i32 0, align 4
@SINGLE_BOUNDARY = common dso_local global i32 0, align 4
@TDP_EXECVMSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"oldvmspace still used\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @post_execve(%struct.thread* %0, i32 %1, %struct.vmspace* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmspace*, align 8
  %7 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vmspace* %2, %struct.vmspace** %6, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  %10 = icmp eq %struct.thread* %8, %9
  %11 = zext i1 %10 to i32
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = bitcast %struct.thread* %12 to i8*
  %14 = call i32 @KASSERT(i32 %11, i8* %13)
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %7, align 8
  %18 = load %struct.proc*, %struct.proc** %7, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @P_HADTHREADS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %3
  %25 = load %struct.proc*, %struct.proc** %7, align 8
  %26 = call i32 @PROC_LOCK(%struct.proc* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EJUSTRETURN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.proc*, %struct.proc** %7, align 8
  %32 = load i32, i32* @SINGLE_EXIT, align 4
  %33 = call i32 @thread_single(%struct.proc* %31, i32 %32)
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.proc*, %struct.proc** %7, align 8
  %36 = load i32, i32* @SINGLE_BOUNDARY, align 4
  %37 = call i32 @thread_single_end(%struct.proc* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.proc*, %struct.proc** %7, align 8
  %40 = call i32 @PROC_UNLOCK(%struct.proc* %39)
  br label %41

41:                                               ; preds = %38, %3
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TDP_EXECVMSPC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.proc*, %struct.proc** %7, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 1
  %51 = load %struct.vmspace*, %struct.vmspace** %50, align 8
  %52 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %53 = icmp ne %struct.vmspace* %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %57 = call i32 @vmspace_free(%struct.vmspace* %56)
  %58 = load i32, i32* @TDP_EXECVMSPC, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @thread_single(%struct.proc*, i32) #1

declare dso_local i32 @thread_single_end(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @vmspace_free(%struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
