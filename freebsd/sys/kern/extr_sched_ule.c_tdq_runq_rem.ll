; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_runq_rem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_runq_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdq = type { i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.td_sched = type { i32, i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"tdq_runq_remove: thread %p null ts_runq\00", align 1
@TSF_XFERABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tdq*, %struct.thread*)* @tdq_runq_rem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tdq_runq_rem(%struct.tdq* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.tdq*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.td_sched*, align 8
  store %struct.tdq* %0, %struct.tdq** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %4, align 8
  %7 = call %struct.td_sched* @td_get_sched(%struct.thread* %6)
  store %struct.td_sched* %7, %struct.td_sched** %5, align 8
  %8 = load %struct.tdq*, %struct.tdq** %3, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @TDQ_LOCK_ASSERT(%struct.tdq* %8, i32 %9)
  %11 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %12 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = bitcast %struct.thread* %16 to i8*
  %18 = call i32 @KASSERT(i32 %15, i8* %17)
  %19 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %20 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TSF_XFERABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.tdq*, %struct.tdq** %3, align 8
  %27 = getelementptr inbounds %struct.tdq, %struct.tdq* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @TSF_XFERABLE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %33 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %25, %2
  %37 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %38 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.tdq*, %struct.tdq** %3, align 8
  %41 = getelementptr inbounds %struct.tdq, %struct.tdq* %40, i32 0, i32 2
  %42 = icmp eq i32* %39, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load %struct.tdq*, %struct.tdq** %3, align 8
  %45 = getelementptr inbounds %struct.tdq, %struct.tdq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tdq*, %struct.tdq** %3, align 8
  %48 = getelementptr inbounds %struct.tdq, %struct.tdq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %53 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.thread*, %struct.thread** %4, align 8
  %56 = load %struct.tdq*, %struct.tdq** %3, align 8
  %57 = getelementptr inbounds %struct.tdq, %struct.tdq* %56, i32 0, i32 0
  %58 = call i32 @runq_remove_idx(i32* %54, %struct.thread* %55, i32* %57)
  br label %65

59:                                               ; preds = %43
  %60 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %61 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.thread*, %struct.thread** %4, align 8
  %64 = call i32 @runq_remove_idx(i32* %62, %struct.thread* %63, i32* null)
  br label %65

65:                                               ; preds = %59, %51
  br label %72

66:                                               ; preds = %36
  %67 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %68 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.thread*, %struct.thread** %4, align 8
  %71 = call i32 @runq_remove(i32* %69, %struct.thread* %70)
  br label %72

72:                                               ; preds = %66, %65
  ret void
}

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @TDQ_LOCK_ASSERT(%struct.tdq*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @runq_remove_idx(i32*, %struct.thread*, i32*) #1

declare dso_local i32 @runq_remove(i32*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
