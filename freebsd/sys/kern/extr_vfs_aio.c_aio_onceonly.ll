; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_onceonly.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_onceonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process_exit = common dso_local global i32 0, align 4
@aio_proc_rundown = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@exit_tag = common dso_local global i8* null, align 8
@process_exec = common dso_local global i32 0, align 4
@aio_proc_rundown_exec = common dso_local global i32 0, align 4
@exec_tag = common dso_local global i8* null, align 8
@EVFILT_AIO = common dso_local global i32 0, align 4
@aio_filtops = common dso_local global i32 0, align 4
@EVFILT_LIO = common dso_local global i32 0, align 4
@lio_filtops = common dso_local global i32 0, align 4
@aio_freeproc = common dso_local global i32 0, align 4
@aio_newproc_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"aio_new_proc\00", align 1
@aio_job_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"aio_job\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@aio_jobs = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@aiod_unr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"AIO\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@kaio_zone = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"AIOP\00", align 1
@aiop_zone = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"AIOCB\00", align 1
@aiocb_zone = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"AIOLIO\00", align 1
@aiolio_zone = common dso_local global i8* null, align 8
@AIOD_LIFETIME_DEFAULT = common dso_local global i32 0, align 4
@aiod_lifetime = common dso_local global i32 0, align 4
@jobrefid = common dso_local global i32 0, align 4
@CTL_P1003_1B_ASYNCHRONOUS_IO = common dso_local global i32 0, align 4
@_POSIX_ASYNCHRONOUS_IO = common dso_local global i32 0, align 4
@CTL_P1003_1B_AIO_MAX = common dso_local global i32 0, align 4
@MAX_AIO_QUEUE = common dso_local global i32 0, align 4
@CTL_P1003_1B_AIO_PRIO_DELTA_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @aio_onceonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_onceonly() #0 {
  %1 = load i32, i32* @process_exit, align 4
  %2 = load i32, i32* @aio_proc_rundown, align 4
  %3 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %4 = call i8* @EVENTHANDLER_REGISTER(i32 %1, i32 %2, i32* null, i32 %3)
  store i8* %4, i8** @exit_tag, align 8
  %5 = load i32, i32* @process_exec, align 4
  %6 = load i32, i32* @aio_proc_rundown_exec, align 4
  %7 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %8 = call i8* @EVENTHANDLER_REGISTER(i32 %5, i32 %6, i32* null, i32 %7)
  store i8* %8, i8** @exec_tag, align 8
  %9 = load i32, i32* @EVFILT_AIO, align 4
  %10 = call i32 @kqueue_add_filteropts(i32 %9, i32* @aio_filtops)
  %11 = load i32, i32* @EVFILT_LIO, align 4
  %12 = call i32 @kqueue_add_filteropts(i32 %11, i32* @lio_filtops)
  %13 = call i32 @TAILQ_INIT(i32* @aio_freeproc)
  %14 = call i32 @sema_init(i32* @aio_newproc_sem, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* @aio_job_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %15)
  %17 = call i32 @TAILQ_INIT(i32* @aio_jobs)
  %18 = load i32, i32* @INT_MAX, align 4
  %19 = call i32 @new_unrhdr(i32 1, i32 %18, i32* null)
  store i32 %19, i32* @aiod_unr, align 4
  %20 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %21 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %22 = call i8* @uma_zcreate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %20, i32 %21)
  store i8* %22, i8** @kaio_zone, align 8
  %23 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %24 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %25 = call i8* @uma_zcreate(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %23, i32 %24)
  store i8* %25, i8** @aiop_zone, align 8
  %26 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %27 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %28 = call i8* @uma_zcreate(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %26, i32 %27)
  store i8* %28, i8** @aiocb_zone, align 8
  %29 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %30 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %31 = call i8* @uma_zcreate(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %29, i32 %30)
  store i8* %31, i8** @aiolio_zone, align 8
  %32 = load i32, i32* @AIOD_LIFETIME_DEFAULT, align 4
  store i32 %32, i32* @aiod_lifetime, align 4
  store i32 1, i32* @jobrefid, align 4
  %33 = load i32, i32* @CTL_P1003_1B_ASYNCHRONOUS_IO, align 4
  %34 = load i32, i32* @_POSIX_ASYNCHRONOUS_IO, align 4
  %35 = call i32 @p31b_setcfg(i32 %33, i32 %34)
  %36 = load i32, i32* @CTL_P1003_1B_AIO_MAX, align 4
  %37 = load i32, i32* @MAX_AIO_QUEUE, align 4
  %38 = call i32 @p31b_setcfg(i32 %36, i32 %37)
  %39 = load i32, i32* @CTL_P1003_1B_AIO_PRIO_DELTA_MAX, align 4
  %40 = call i32 @p31b_setcfg(i32 %39, i32 0)
  ret i32 0
}

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @kqueue_add_filteropts(i32, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @sema_init(i32*, i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @new_unrhdr(i32, i32, i32*) #1

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @p31b_setcfg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
