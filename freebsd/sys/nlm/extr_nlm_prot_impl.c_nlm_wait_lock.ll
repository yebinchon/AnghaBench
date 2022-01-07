; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_wait_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_wait_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_waiting_lock = type { i64 }

@nlm_global_lock = common dso_local global i32 0, align 4
@SIGDEFERSTOP_ERESTART = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nlmlock\00", align 1
@nlm_waiting_locks = common dso_local global i32 0, align 4
@nw_link = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@M_NLM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_wait_lock(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_waiting_lock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.nlm_waiting_lock*
  store %struct.nlm_waiting_lock* %9, %struct.nlm_waiting_lock** %5, align 8
  %10 = call i32 @mtx_lock(i32* @nlm_global_lock)
  store i32 0, i32* %6, align 4
  %11 = load %struct.nlm_waiting_lock*, %struct.nlm_waiting_lock** %5, align 8
  %12 = getelementptr inbounds %struct.nlm_waiting_lock, %struct.nlm_waiting_lock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @SIGDEFERSTOP_ERESTART, align 4
  %17 = call i32 @sigdeferstop(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nlm_waiting_lock*, %struct.nlm_waiting_lock** %5, align 8
  %19 = load i32, i32* @PCATCH, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @msleep(%struct.nlm_waiting_lock* %18, i32* @nlm_global_lock, i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @sigallowstop(i32 %22)
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.nlm_waiting_lock*, %struct.nlm_waiting_lock** %5, align 8
  %26 = load i32, i32* @nw_link, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* @nlm_waiting_locks, %struct.nlm_waiting_lock* %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.nlm_waiting_lock*, %struct.nlm_waiting_lock** %5, align 8
  %32 = getelementptr inbounds %struct.nlm_waiting_lock, %struct.nlm_waiting_lock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %30
  br label %45

37:                                               ; preds = %24
  %38 = load %struct.nlm_waiting_lock*, %struct.nlm_waiting_lock** %5, align 8
  %39 = getelementptr inbounds %struct.nlm_waiting_lock, %struct.nlm_waiting_lock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @EINTR, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %37
  br label %45

45:                                               ; preds = %44, %36
  %46 = call i32 @mtx_unlock(i32* @nlm_global_lock)
  %47 = load %struct.nlm_waiting_lock*, %struct.nlm_waiting_lock** %5, align 8
  %48 = load i32, i32* @M_NLM, align 4
  %49 = call i32 @free(%struct.nlm_waiting_lock* %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sigdeferstop(i32) #1

declare dso_local i32 @msleep(%struct.nlm_waiting_lock*, i32*, i32, i8*, i32) #1

declare dso_local i32 @sigallowstop(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nlm_waiting_lock*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.nlm_waiting_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
