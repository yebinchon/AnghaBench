; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaiocb = type { i32, i32* }

@aio_job_mtx = common dso_local global i32 0, align 4
@aio_cancel_daemon_job = common dso_local global i32 0, align 4
@aio_jobs = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aio_schedule(%struct.kaiocb* %0, i32* %1) #0 {
  %3 = alloca %struct.kaiocb*, align 8
  %4 = alloca i32*, align 8
  store %struct.kaiocb* %0, %struct.kaiocb** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 @mtx_lock(i32* @aio_job_mtx)
  %6 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %7 = load i32, i32* @aio_cancel_daemon_job, align 4
  %8 = call i32 @aio_set_cancel_function(%struct.kaiocb* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call i32 @mtx_unlock(i32* @aio_job_mtx)
  %12 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %13 = call i32 @aio_cancel(%struct.kaiocb* %12)
  br label %26

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %17 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %19 = load i32, i32* @list, align 4
  %20 = call i32 @TAILQ_INSERT_TAIL(i32* @aio_jobs, %struct.kaiocb* %18, i32 %19)
  %21 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %22 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @aio_kick_nowait(i32 %23)
  %25 = call i32 @mtx_unlock(i32* @aio_job_mtx)
  br label %26

26:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @aio_set_cancel_function(%struct.kaiocb*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @aio_cancel(%struct.kaiocb*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.kaiocb*, i32) #1

declare dso_local i32 @aio_kick_nowait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
