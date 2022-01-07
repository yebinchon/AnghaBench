; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_choose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64 }
%struct.tdq = type { i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PRI_MIN_BATCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"tdq_choose: Invalid priority on timeshare queue %d\00", align 1
@PRI_MIN_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"tdq_choose: Invalid priority on idle queue %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread* (%struct.tdq*)* @tdq_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread* @tdq_choose(%struct.tdq* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.tdq*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.tdq* %0, %struct.tdq** %3, align 8
  %5 = load %struct.tdq*, %struct.tdq** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @TDQ_LOCK_ASSERT(%struct.tdq* %5, i32 %6)
  %8 = load %struct.tdq*, %struct.tdq** %3, align 8
  %9 = getelementptr inbounds %struct.tdq, %struct.tdq* %8, i32 0, i32 3
  %10 = call %struct.thread* @runq_choose(i32* %9)
  store %struct.thread* %10, %struct.thread** %4, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = icmp ne %struct.thread* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  store %struct.thread* %14, %struct.thread** %2, align 8
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.tdq*, %struct.tdq** %3, align 8
  %17 = getelementptr inbounds %struct.tdq, %struct.tdq* %16, i32 0, i32 2
  %18 = load %struct.tdq*, %struct.tdq** %3, align 8
  %19 = getelementptr inbounds %struct.tdq, %struct.tdq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.thread* @runq_choose_from(i32* %17, i32 %20)
  store %struct.thread* %21, %struct.thread** %4, align 8
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = icmp ne %struct.thread* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PRI_MIN_BATCH, align 8
  %29 = icmp sge i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %30, i8* %34)
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  store %struct.thread* %36, %struct.thread** %2, align 8
  br label %57

37:                                               ; preds = %15
  %38 = load %struct.tdq*, %struct.tdq** %3, align 8
  %39 = getelementptr inbounds %struct.tdq, %struct.tdq* %38, i32 0, i32 0
  %40 = call %struct.thread* @runq_choose(i32* %39)
  store %struct.thread* %40, %struct.thread** %4, align 8
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = icmp ne %struct.thread* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PRI_MIN_IDLE, align 8
  %48 = icmp sge i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.thread*, %struct.thread** %4, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 %49, i8* %53)
  %55 = load %struct.thread*, %struct.thread** %4, align 8
  store %struct.thread* %55, %struct.thread** %2, align 8
  br label %57

56:                                               ; preds = %37
  store %struct.thread* null, %struct.thread** %2, align 8
  br label %57

57:                                               ; preds = %56, %43, %24, %13
  %58 = load %struct.thread*, %struct.thread** %2, align 8
  ret %struct.thread* %58
}

declare dso_local i32 @TDQ_LOCK_ASSERT(%struct.tdq*, i32) #1

declare dso_local %struct.thread* @runq_choose(i32*) #1

declare dso_local %struct.thread* @runq_choose_from(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
