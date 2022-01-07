; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soaio_kproc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soaio_kproc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@soaio_jobs_lock = common dso_local global i32 0, align 4
@soaio_num_procs = common dso_local global i64 0, align 8
@soaio_target_procs = common dso_local global i64 0, align 8
@soaio_max_procs = common dso_local global i64 0, align 8
@soaio_queued = common dso_local global i64 0, align 8
@soaio_idle = common dso_local global i64 0, align 8
@soaio_starting = common dso_local global i64 0, align 8
@soaio_kproc_unr = common dso_local global i32 0, align 4
@soaio_kproc_loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"soaiod%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @soaio_kproc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soaio_kproc_create(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @mtx_lock(i32* @soaio_jobs_lock)
  br label %9

9:                                                ; preds = %49, %2
  %10 = load i64, i64* @soaio_num_procs, align 8
  %11 = load i64, i64* @soaio_target_procs, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %28

14:                                               ; preds = %9
  %15 = load i64, i64* @soaio_num_procs, align 8
  %16 = load i64, i64* @soaio_max_procs, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %53

19:                                               ; preds = %14
  %20 = load i64, i64* @soaio_queued, align 8
  %21 = load i64, i64* @soaio_idle, align 8
  %22 = load i64, i64* @soaio_starting, align 8
  %23 = add nsw i64 %21, %22
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %53

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27, %13
  %29 = load i64, i64* @soaio_starting, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @soaio_starting, align 8
  %31 = call i32 @mtx_unlock(i32* @soaio_jobs_lock)
  %32 = load i32, i32* @soaio_kproc_unr, align 4
  %33 = call i32 @alloc_unr(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @soaio_kproc_loop, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @kproc_create(i32 %34, i8* %37, %struct.proc** %5, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load i32, i32* @soaio_kproc_unr, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @free_unr(i32 %43, i32 %44)
  %46 = call i32 @mtx_lock(i32* @soaio_jobs_lock)
  %47 = load i64, i64* @soaio_starting, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* @soaio_starting, align 8
  br label %53

49:                                               ; preds = %28
  %50 = call i32 @mtx_lock(i32* @soaio_jobs_lock)
  %51 = load i64, i64* @soaio_num_procs, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* @soaio_num_procs, align 8
  br label %9

53:                                               ; preds = %42, %25, %18
  %54 = call i32 @mtx_unlock(i32* @soaio_jobs_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @kproc_create(i32, i8*, %struct.proc**, i32, i32, i8*, i32) #1

declare dso_local i32 @free_unr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
