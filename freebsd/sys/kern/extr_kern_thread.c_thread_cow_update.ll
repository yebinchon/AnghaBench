; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_cow_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_cow_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.plimit*, %struct.ucred*, %struct.proc* }
%struct.plimit = type { i32 }
%struct.ucred = type { i32 }
%struct.proc = type { i32, %struct.plimit*, %struct.ucred* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_cow_update(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.plimit*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 3
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %3, align 8
  store %struct.ucred* null, %struct.ucred** %4, align 8
  store %struct.plimit* null, %struct.plimit** %5, align 8
  %9 = load %struct.proc*, %struct.proc** %3, align 8
  %10 = call i32 @PROC_LOCK(%struct.proc* %9)
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 2
  %13 = load %struct.ucred*, %struct.ucred** %12, align 8
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 2
  %16 = load %struct.ucred*, %struct.ucred** %15, align 8
  %17 = icmp ne %struct.ucred* %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.thread*, %struct.thread** %2, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 2
  %21 = load %struct.ucred*, %struct.ucred** %20, align 8
  store %struct.ucred* %21, %struct.ucred** %4, align 8
  %22 = load %struct.proc*, %struct.proc** %3, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 2
  %24 = load %struct.ucred*, %struct.ucred** %23, align 8
  %25 = call %struct.ucred* @crhold(%struct.ucred* %24)
  %26 = load %struct.thread*, %struct.thread** %2, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 2
  store %struct.ucred* %25, %struct.ucred** %27, align 8
  br label %28

28:                                               ; preds = %18, %1
  %29 = load %struct.thread*, %struct.thread** %2, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 1
  %31 = load %struct.plimit*, %struct.plimit** %30, align 8
  %32 = load %struct.proc*, %struct.proc** %3, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 1
  %34 = load %struct.plimit*, %struct.plimit** %33, align 8
  %35 = icmp ne %struct.plimit* %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.thread*, %struct.thread** %2, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 1
  %39 = load %struct.plimit*, %struct.plimit** %38, align 8
  store %struct.plimit* %39, %struct.plimit** %5, align 8
  %40 = load %struct.proc*, %struct.proc** %3, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 1
  %42 = load %struct.plimit*, %struct.plimit** %41, align 8
  %43 = call %struct.plimit* @lim_hold(%struct.plimit* %42)
  %44 = load %struct.thread*, %struct.thread** %2, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 1
  store %struct.plimit* %43, %struct.plimit** %45, align 8
  br label %46

46:                                               ; preds = %36, %28
  %47 = load %struct.proc*, %struct.proc** %3, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.thread*, %struct.thread** %2, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.proc*, %struct.proc** %3, align 8
  %53 = call i32 @PROC_UNLOCK(%struct.proc* %52)
  %54 = load %struct.ucred*, %struct.ucred** %4, align 8
  %55 = icmp ne %struct.ucred* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.ucred*, %struct.ucred** %4, align 8
  %58 = call i32 @crfree(%struct.ucred* %57)
  br label %59

59:                                               ; preds = %56, %46
  %60 = load %struct.plimit*, %struct.plimit** %5, align 8
  %61 = icmp ne %struct.plimit* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.plimit*, %struct.plimit** %5, align 8
  %64 = call i32 @lim_free(%struct.plimit* %63)
  br label %65

65:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.ucred* @crhold(%struct.ucred*) #1

declare dso_local %struct.plimit* @lim_hold(%struct.plimit*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

declare dso_local i32 @lim_free(%struct.plimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
