; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_interact_score.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_interact_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.td_sched = type { i32, i32 }

@sched_interact = common dso_local global i32 0, align 4
@SCHED_INTERACT_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @sched_interact_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_interact_score(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.td_sched*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = call %struct.td_sched* @td_get_sched(%struct.thread* %6)
  store %struct.td_sched* %7, %struct.td_sched** %4, align 8
  %8 = load i32, i32* @sched_interact, align 4
  %9 = load i32, i32* @SCHED_INTERACT_HALF, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %13 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %16 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @SCHED_INTERACT_HALF, align 4
  store i32 %20, i32* %2, align 4
  br label %73

21:                                               ; preds = %11, %1
  %22 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %23 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %26 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %31 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SCHED_INTERACT_HALF, align 4
  %34 = sdiv i32 %32, %33
  %35 = call i32 @max(i32 1, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @SCHED_INTERACT_HALF, align 4
  %37 = load i32, i32* @SCHED_INTERACT_HALF, align 4
  %38 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %39 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sdiv i32 %40, %41
  %43 = sub nsw i32 %37, %42
  %44 = add nsw i32 %36, %43
  store i32 %44, i32* %2, align 4
  br label %73

45:                                               ; preds = %21
  %46 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %47 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %50 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %55 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SCHED_INTERACT_HALF, align 4
  %58 = sdiv i32 %56, %57
  %59 = call i32 @max(i32 1, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %61 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %2, align 4
  br label %73

65:                                               ; preds = %45
  %66 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %67 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @SCHED_INTERACT_HALF, align 4
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %70, %53, %29, %19
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
