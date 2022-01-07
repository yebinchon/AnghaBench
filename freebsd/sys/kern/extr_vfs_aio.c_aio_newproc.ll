; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_newproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_newproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@aiod_unr = common dso_local global i32 0, align 4
@aio_daemon = common dso_local global i32 0, align 4
@RFNOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"aiod%d\00", align 1
@aio_newproc_sem = common dso_local global i32 0, align 4
@aio_job_mtx = common dso_local global i32 0, align 4
@num_aio_procs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @aio_newproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_newproc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @aiod_unr, align 4
  %7 = call i32 @alloc_unr(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @aio_daemon, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32, i32* @RFNOWAIT, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @kproc_create(i32 %8, i8* %11, %struct.proc** %4, i32 %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = call i32 @sema_wait(i32* @aio_newproc_sem)
  %19 = call i32 @mtx_lock(i32* @aio_job_mtx)
  %20 = load i32, i32* @num_aio_procs, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @num_aio_procs, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = call i32 @mtx_unlock(i32* @aio_job_mtx)
  br label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @aiod_unr, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @free_unr(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @kproc_create(i32, i8*, %struct.proc**, i32, i32, i8*, i32) #1

declare dso_local i32 @sema_wait(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free_unr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
