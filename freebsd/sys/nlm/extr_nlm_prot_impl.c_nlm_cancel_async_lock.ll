; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_cancel_async_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_cancel_async_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_async_lock = type { i32, i32, i32, i32, %struct.nlm_host* }
%struct.nlm_host = type { i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@F_CANCEL = common dso_local global i32 0, align 4
@F_REMOTE = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"NLM: async lock %p for %s (sysid %d) cancelled\0A\00", align 1
@af_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_async_lock*)* @nlm_cancel_async_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_cancel_async_lock(%struct.nlm_async_lock* %0) #0 {
  %2 = alloca %struct.nlm_async_lock*, align 8
  %3 = alloca %struct.nlm_host*, align 8
  %4 = alloca i32, align 4
  store %struct.nlm_async_lock* %0, %struct.nlm_async_lock** %2, align 8
  %5 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %6 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %5, i32 0, i32 4
  %7 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  store %struct.nlm_host* %7, %struct.nlm_host** %3, align 8
  %8 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %9 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %8, i32 0, i32 0
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %13 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %12, i32 0, i32 0
  %14 = call i32 @mtx_unlock(i32* %13)
  %15 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %16 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @F_CANCEL, align 4
  %19 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %20 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %19, i32 0, i32 2
  %21 = load i32, i32* @F_REMOTE, align 4
  %22 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %23 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %22, i32 0, i32 1
  %24 = call i32 @VOP_ADVLOCKASYNC(i32 %17, i32* null, i32 %18, i32* %20, i32 %21, i32* null, i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @taskqueue_thread, align 4
  %29 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %30 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %29, i32 0, i32 0
  %31 = call i32 @taskqueue_drain(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %34 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %33, i32 0, i32 0
  %35 = call i32 @mtx_lock(i32* %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %32
  %39 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %40 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %41 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %44 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @NLM_DEBUG(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.nlm_async_lock* %39, i32 %42, i32 %45)
  %47 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %48 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %47, i32 0, i32 1
  %49 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %50 = load i32, i32* @af_link, align 4
  %51 = call i32 @TAILQ_REMOVE(i32* %48, %struct.nlm_async_lock* %49, i32 %50)
  %52 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %53 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %52, i32 0, i32 0
  %54 = call i32 @mtx_unlock(i32* %53)
  %55 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %56 = call i32 @nlm_free_async_lock(%struct.nlm_async_lock* %55)
  %57 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %58 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %57, i32 0, i32 0
  %59 = call i32 @mtx_lock(i32* %58)
  br label %60

60:                                               ; preds = %38, %32
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @VOP_ADVLOCKASYNC(i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @NLM_DEBUG(i32, i8*, %struct.nlm_async_lock*, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nlm_async_lock*, i32) #1

declare dso_local i32 @nlm_free_async_lock(%struct.nlm_async_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
