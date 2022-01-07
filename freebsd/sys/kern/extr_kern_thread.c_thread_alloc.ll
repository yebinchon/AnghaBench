; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64 }

@thread_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"thread_alloc got thread with kstack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread* @thread_alloc(i32 %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @thread_reap()
  %6 = load i32, i32* @thread_zone, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call i64 @uma_zalloc(i32 %6, i32 %7)
  %9 = inttoptr i64 %8 to %struct.thread*
  store %struct.thread* %9, %struct.thread** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @vm_thread_new(%struct.thread* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @thread_zone, align 4
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = call i32 @uma_zfree(i32 %21, %struct.thread* %22)
  store %struct.thread* null, %struct.thread** %2, align 8
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = call i32 @cpu_thread_alloc(%struct.thread* %25)
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  store %struct.thread* %27, %struct.thread** %2, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.thread*, %struct.thread** %2, align 8
  ret %struct.thread* %29
}

declare dso_local i32 @thread_reap(...) #1

declare dso_local i64 @uma_zalloc(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_thread_new(%struct.thread*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.thread*) #1

declare dso_local i32 @cpu_thread_alloc(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
