; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.nlm_async_lock = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"NLM: host %s (sysid %d) rebooted, new state is %d\0A\00", align 1
@NLM_RECOVERING = common dso_local global i64 0, align 8
@NLM_SYSID_CLIENT = common dso_local global i32 0, align 4
@nlm_client_recovery_start = common dso_local global i32 0, align 4
@curproc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"NFS lock recovery for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_host*, i32)* @nlm_host_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_host_notify(%struct.nlm_host* %0, i32 %1) #0 {
  %3 = alloca %struct.nlm_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_async_lock*, align 8
  %6 = alloca %struct.thread*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %11 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %14 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @NLM_DEBUG(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %20 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %19, i32 0, i32 5
  %21 = call i32 @mtx_lock(i32* %20)
  br label %22

22:                                               ; preds = %27, %18
  %23 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %24 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %23, i32 0, i32 6
  %25 = call %struct.nlm_async_lock* @TAILQ_FIRST(i32* %24)
  store %struct.nlm_async_lock* %25, %struct.nlm_async_lock** %5, align 8
  %26 = icmp ne %struct.nlm_async_lock* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %29 = call i32 @nlm_cancel_async_lock(%struct.nlm_async_lock* %28)
  br label %22

30:                                               ; preds = %22
  %31 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %32 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %31, i32 0, i32 5
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %35 = call i32 @nlm_check_expired_locks(%struct.nlm_host* %34)
  %36 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %37 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @lf_clearremotesys(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %42 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %30
  %46 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %47 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NLM_RECOVERING, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load i32, i32* @NLM_SYSID_CLIENT, align 4
  %53 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %54 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %52, %55
  %57 = call i64 @lf_countlocks(i32 %56)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %51
  %60 = load i64, i64* @NLM_RECOVERING, align 8
  %61 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %62 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %64 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %63, i32 0, i32 4
  %65 = call i32 @refcount_acquire(i32* %64)
  %66 = load i32, i32* @nlm_client_recovery_start, align 4
  %67 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %68 = load i32, i32* @curproc, align 4
  %69 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %70 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @kthread_add(i32 %66, %struct.nlm_host* %67, i32 %68, %struct.thread** %6, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %59, %51, %45, %30
  ret void
}

declare dso_local i32 @NLM_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.nlm_async_lock* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @nlm_cancel_async_lock(%struct.nlm_async_lock*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nlm_check_expired_locks(%struct.nlm_host*) #1

declare dso_local i32 @lf_clearremotesys(i32) #1

declare dso_local i64 @lf_countlocks(i32) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @kthread_add(i32, %struct.nlm_host*, i32, %struct.thread**, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
