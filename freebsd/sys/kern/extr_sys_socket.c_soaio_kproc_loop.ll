; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soaio_kproc_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soaio_kproc_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.vmspace* }
%struct.vmspace = type { i32 }
%struct.task = type { i32, i32, i32 (i32, i32)* }

@curproc = common dso_local global %struct.proc* null, align 8
@soaio_jobs_lock = common dso_local global i32 0, align 4
@soaio_starting = common dso_local global i64 0, align 8
@soaio_jobs = common dso_local global i32 0, align 4
@ta_link = common dso_local global i32 0, align 4
@soaio_queued = common dso_local global i64 0, align 8
@soaio_idle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@soaio_lifetime = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@soaio_num_procs = common dso_local global i64 0, align 8
@soaio_target_procs = common dso_local global i64 0, align 8
@soaio_kproc_unr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @soaio_kproc_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soaio_kproc_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.vmspace*, align 8
  %5 = alloca %struct.task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %12, %struct.proc** %3, align 8
  %13 = load %struct.proc*, %struct.proc** %3, align 8
  %14 = call %struct.vmspace* @vmspace_acquire_ref(%struct.proc* %13)
  store %struct.vmspace* %14, %struct.vmspace** %4, align 8
  %15 = call i32 @mtx_lock(i32* @soaio_jobs_lock)
  %16 = load i64, i64* @soaio_starting, align 8
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @MPASS(i32 %18)
  %20 = load i64, i64* @soaio_starting, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* @soaio_starting, align 8
  br label %22

22:                                               ; preds = %81, %58, %1
  br label %23

23:                                               ; preds = %27, %22
  %24 = call i64 @STAILQ_EMPTY(i32* @soaio_jobs)
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = call %struct.task* @STAILQ_FIRST(i32* @soaio_jobs)
  store %struct.task* %28, %struct.task** %5, align 8
  %29 = load i32, i32* @ta_link, align 4
  %30 = call i32 @STAILQ_REMOVE_HEAD(i32* @soaio_jobs, i32 %29)
  %31 = load i64, i64* @soaio_queued, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* @soaio_queued, align 8
  %33 = load %struct.task*, %struct.task** %5, align 8
  %34 = getelementptr inbounds %struct.task, %struct.task* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.task*, %struct.task** %5, align 8
  %37 = getelementptr inbounds %struct.task, %struct.task* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = call i32 @mtx_unlock(i32* @soaio_jobs_lock)
  %39 = load %struct.task*, %struct.task** %5, align 8
  %40 = getelementptr inbounds %struct.task, %struct.task* %39, i32 0, i32 2
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.task*, %struct.task** %5, align 8
  %43 = getelementptr inbounds %struct.task, %struct.task* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 %41(i32 %44, i32 %45)
  %47 = call i32 @mtx_lock(i32* @soaio_jobs_lock)
  br label %23

48:                                               ; preds = %23
  %49 = load i64, i64* @soaio_queued, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @MPASS(i32 %51)
  %53 = load %struct.proc*, %struct.proc** %3, align 8
  %54 = getelementptr inbounds %struct.proc, %struct.proc* %53, i32 0, i32 0
  %55 = load %struct.vmspace*, %struct.vmspace** %54, align 8
  %56 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %57 = icmp ne %struct.vmspace* %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = call i32 @mtx_unlock(i32* @soaio_jobs_lock)
  %60 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %61 = call i32 @vmspace_switch_aio(%struct.vmspace* %60)
  %62 = call i32 @mtx_lock(i32* @soaio_jobs_lock)
  br label %22

63:                                               ; preds = %48
  %64 = load i32, i32* @soaio_idle, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @soaio_idle, align 4
  %66 = load i32, i32* @soaio_lifetime, align 4
  %67 = call i32 @mtx_sleep(i32* @soaio_idle, i32* @soaio_jobs_lock, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @soaio_idle, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* @soaio_idle, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @EWOULDBLOCK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = call i64 @STAILQ_EMPTY(i32* @soaio_jobs)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i64, i64* @soaio_num_procs, align 8
  %78 = load i64, i64* @soaio_target_procs, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %82

81:                                               ; preds = %76, %73, %63
  br label %22

82:                                               ; preds = %80
  %83 = load i64, i64* @soaio_num_procs, align 8
  %84 = add nsw i64 %83, -1
  store i64 %84, i64* @soaio_num_procs, align 8
  %85 = call i32 @mtx_unlock(i32* @soaio_jobs_lock)
  %86 = load i32, i32* @soaio_kproc_unr, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @free_unr(i32 %86, i32 %87)
  %89 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local %struct.vmspace* @vmspace_acquire_ref(%struct.proc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.task* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vmspace_switch_aio(%struct.vmspace*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
