; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_interact_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_interact_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.td_sched = type { i32, i32 }

@SCHED_SLP_RUN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @sched_interact_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_interact_update(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.td_sched*, align 8
  %4 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = call %struct.td_sched* @td_get_sched(%struct.thread* %5)
  store %struct.td_sched* %6, %struct.td_sched** %3, align 8
  %7 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %8 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %11 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %9, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SCHED_SLP_RUN_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %74

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SCHED_SLP_RUN_MAX, align 4
  %21 = mul nsw i32 %20, 2
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %25 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %28 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @SCHED_SLP_RUN_MAX, align 4
  %33 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %34 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %36 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %43

37:                                               ; preds = %23
  %38 = load i32, i32* @SCHED_SLP_RUN_MAX, align 4
  %39 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %40 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %42 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %31
  br label %74

44:                                               ; preds = %18
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SCHED_SLP_RUN_MAX, align 4
  %47 = sdiv i32 %46, 5
  %48 = mul nsw i32 %47, 6
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %52 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %52, align 4
  %55 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %56 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %56, align 4
  br label %74

59:                                               ; preds = %44
  %60 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %61 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 5
  %64 = mul nsw i32 %63, 4
  %65 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %66 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %68 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 5
  %71 = mul nsw i32 %70, 4
  %72 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %73 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %59, %50, %43, %17
  ret void
}

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
