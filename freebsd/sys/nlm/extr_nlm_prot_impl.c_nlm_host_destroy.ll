; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@nlm_global_lock = common dso_local global i32 0, align 4
@nlm_hosts = common dso_local global i32 0, align 4
@nh_link = common dso_local global i32 0, align 4
@M_NLM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_host*)* @nlm_host_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_host_destroy(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %3 = call i32 @mtx_lock(i32* @nlm_global_lock)
  %4 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %5 = load i32, i32* @nh_link, align 4
  %6 = call i32 @TAILQ_REMOVE(i32* @nlm_hosts, %struct.nlm_host* %4, i32 %5)
  %7 = call i32 @mtx_unlock(i32* @nlm_global_lock)
  %8 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %9 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %15 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @CLNT_RELEASE(i64 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %21 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %27 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @CLNT_RELEASE(i64 %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %33 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %32, i32 0, i32 1
  %34 = call i32 @mtx_destroy(i32* %33)
  %35 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %36 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %35, i32 0, i32 0
  %37 = call i32 @sysctl_ctx_free(i32* %36)
  %38 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %39 = load i32, i32* @M_NLM, align 4
  %40 = call i32 @free(%struct.nlm_host* %38, i32 %39)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nlm_host*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @CLNT_RELEASE(i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @free(%struct.nlm_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
