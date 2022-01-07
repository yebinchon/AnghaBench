; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_pctcpu_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_pctcpu_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td_sched = type { i32, i32, i32 }

@ticks = common dso_local global i32 0, align 4
@SCHED_TICK_TARG = common dso_local global i32 0, align 4
@SCHED_TICK_MAX = common dso_local global i32 0, align 4
@SCHED_TICK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.td_sched*, i32)* @sched_pctcpu_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_pctcpu_update(%struct.td_sched* %0, i32 %1) #0 {
  %3 = alloca %struct.td_sched*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.td_sched* %0, %struct.td_sched** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ticks, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %9 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %7, %10
  %12 = load i32, i32* @SCHED_TICK_TARG, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %16 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SCHED_TICK_TARG, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %21 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %25 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load i32, i32* @SCHED_TICK_MAX, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %22
  %31 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %32 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %35 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %38 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = sdiv i32 %33, %40
  %42 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %43 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SCHED_TICK_TARG, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sub nsw i32 %44, %47
  %49 = mul nsw i32 %41, %48
  %50 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %51 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SCHED_TICK_TARG, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %56 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %30, %22
  br label %58

58:                                               ; preds = %57, %14
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %64 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %62, %65
  %67 = load i32, i32* @SCHED_TICK_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %70 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %61, %58
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %76 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
