; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_check_expired_locks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_check_expired_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32, i32 }
%struct.nlm_async_lock = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@time_uptime = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"NLM: async lock %p for %s (sysid %d) expired, cookie %d:%d\0A\00", align 1
@af_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_host*)* @nlm_check_expired_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_check_expired_locks(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca %struct.nlm_async_lock*, align 8
  %4 = alloca i64, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %5 = load i64, i64* @time_uptime, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %7 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  br label %9

9:                                                ; preds = %22, %1
  %10 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %11 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %10, i32 0, i32 2
  %12 = call %struct.nlm_async_lock* @TAILQ_FIRST(i32* %11)
  store %struct.nlm_async_lock* %12, %struct.nlm_async_lock** %3, align 8
  %13 = icmp ne %struct.nlm_async_lock* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %17 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %56

22:                                               ; preds = %20
  %23 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %24 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %25 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %30 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %35 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @ng_sysid(i32* %36)
  %38 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %39 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @ng_cookie(i32* %40)
  %42 = call i32 @NLM_DEBUG(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.nlm_async_lock* %23, i32 %28, i32 %33, i32 %37, i32 %41)
  %43 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %44 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %43, i32 0, i32 2
  %45 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %46 = load i32, i32* @af_link, align 4
  %47 = call i32 @TAILQ_REMOVE(i32* %44, %struct.nlm_async_lock* %45, i32 %46)
  %48 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %49 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %48, i32 0, i32 0
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %52 = call i32 @nlm_free_async_lock(%struct.nlm_async_lock* %51)
  %53 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %54 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %53, i32 0, i32 0
  %55 = call i32 @mtx_lock(i32* %54)
  br label %9

56:                                               ; preds = %20
  br label %57

57:                                               ; preds = %62, %56
  %58 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %59 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %58, i32 0, i32 1
  %60 = call %struct.nlm_async_lock* @TAILQ_FIRST(i32* %59)
  store %struct.nlm_async_lock* %60, %struct.nlm_async_lock** %3, align 8
  %61 = icmp ne %struct.nlm_async_lock* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %64 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %63, i32 0, i32 1
  %65 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %66 = load i32, i32* @af_link, align 4
  %67 = call i32 @TAILQ_REMOVE(i32* %64, %struct.nlm_async_lock* %65, i32 %66)
  %68 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %69 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %68, i32 0, i32 0
  %70 = call i32 @mtx_unlock(i32* %69)
  %71 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %3, align 8
  %72 = call i32 @nlm_free_async_lock(%struct.nlm_async_lock* %71)
  %73 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %74 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %73, i32 0, i32 0
  %75 = call i32 @mtx_lock(i32* %74)
  br label %57

76:                                               ; preds = %57
  %77 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %78 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %77, i32 0, i32 0
  %79 = call i32 @mtx_unlock(i32* %78)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.nlm_async_lock* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @NLM_DEBUG(i32, i8*, %struct.nlm_async_lock*, i32, i32, i32, i32) #1

declare dso_local i32 @ng_sysid(i32*) #1

declare dso_local i32 @ng_cookie(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nlm_async_lock*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nlm_free_async_lock(%struct.nlm_async_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
