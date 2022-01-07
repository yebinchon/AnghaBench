; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_free_async_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_free_async_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_async_lock = type { i64, i32, i64 }

@xdr_nlm4_testargs = common dso_local global i64 0, align 8
@M_NLM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_async_lock*)* @nlm_free_async_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_free_async_lock(%struct.nlm_async_lock* %0) #0 {
  %2 = alloca %struct.nlm_async_lock*, align 8
  store %struct.nlm_async_lock* %0, %struct.nlm_async_lock** %2, align 8
  %3 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %4 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %9 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @CLNT_RELEASE(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i64, i64* @xdr_nlm4_testargs, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %16 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %15, i32 0, i32 1
  %17 = call i32 @xdr_free(i32 %14, i32* %16)
  %18 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %19 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %24 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @vrele(i64 %25)
  br label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %2, align 8
  %29 = load i32, i32* @M_NLM, align 4
  %30 = call i32 @free(%struct.nlm_async_lock* %28, i32 %29)
  ret void
}

declare dso_local i32 @CLNT_RELEASE(i64) #1

declare dso_local i32 @xdr_free(i32, i32*) #1

declare dso_local i32 @vrele(i64) #1

declare dso_local i32 @free(%struct.nlm_async_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
